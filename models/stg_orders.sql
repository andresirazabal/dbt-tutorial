
    select 
        order_date,
        customer_id,
        order_id,
        status
    from TEMP_RAW.orders
    where status<>'canceled'