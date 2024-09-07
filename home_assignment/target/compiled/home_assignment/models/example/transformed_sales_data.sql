with sales_info as (
    select order_id, order_date, customer_id, quantity,
    extract(year from order_date) as order_year,
    extract(month from order_date) as order_month,
    extract(day from order_date) as order_day,    
    sum(quantity * price) as total_sales_amount
    from raw_sales_data
    where order_status = 'Completed'
    group by 
    order_id, order_date, customer_id, quantity
)
select * from sales_info