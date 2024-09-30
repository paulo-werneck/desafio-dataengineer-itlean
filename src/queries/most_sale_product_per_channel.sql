with amount_sale_channel as (
    select
        sales_channel,
        item_type as product,
        count(1) as quantity_sales
    from
        tb_sales
    group by 1, 2
)
select
    sales_channel,
    product,
    quantity_sales
from (
    select
        *,
        rank() over (partition by sales_channel order by quantity_sales desc) as nr
    from amount_sale_channel
   ) t
where
    nr = 1