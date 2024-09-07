select order_month, (sum(total_sales_amount)/count(distinct order_id)) as avg_order_value
from transformed_sales_data
where order_year = 2023
group by order_month
order by order_month