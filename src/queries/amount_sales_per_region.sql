with amount_sales_country as (
    select
        country,
        round(sum(total_revenue), 2) as total_revenue_by_country,
    from
        tb_sales
    group by country
),
amount_sales_region as (
    select
        region,
        sum(total_revenue) as total_revenue_by_region
    from
        tb_sales
    group by region
)
select
    country,
    total_revenue_by_country,
    region,
    total_revenue_by_region,
from
    (select *, rank() over (order by total_revenue_by_country desc) as nr
    from amount_sales_country) c,
    (select *, rank() over (order by total_revenue_by_region desc) as nr
    from amount_sales_region) r
where
    c.nr = 1 and r.nr = 1