select
    item_type,
    date_trunc('month', order_date) month_order_date,
    round(avg(total_revenue), 2) as avg_total_revenue
from
    tb_sales
group by
    item_type,
    date_trunc('month', order_date)
order by
    month_order_date, avg_total_revenue desc