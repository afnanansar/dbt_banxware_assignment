select order_id, total_sales_amount from transformed_sales_data
where order_year = 2023
group by order_id, total_sales_amount
order by total_sales_amount desc
limit 5