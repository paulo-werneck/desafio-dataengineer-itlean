select
    item_type as product,
    count(item_type) as quantity_sales
from
    tb_sales
group by
    item_type
order by
    quantity_sales desc
limit 1