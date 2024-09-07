select c.name, ts.total_sales_amount from transformed_sales_data ts
join raw_customer_data c 
on ts.customer_id = c.id 

where order_year = 2023
group by c.name, ts.total_sales_amount
order by ts.total_sales_amount desc
limit 5