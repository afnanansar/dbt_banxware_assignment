select c.name, sum(ts.quantity) as total_volume from transformed_sales_data ts join raw_customer_data c
on ts.customer_id = c.id 

where ts.order_year = 2023 and ts.order_month = 10
group by c.name
order by total_volume desc
limit 1