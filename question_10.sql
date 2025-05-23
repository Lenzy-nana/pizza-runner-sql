-- Q10: What was the volume of orders for each day of the week?
SELECT 
    TO_CHAR(order_time, 'Day') AS day_of_week,
    EXTRACT(DOW FROM order_time) AS day_index,
    COUNT(*) AS total_orders
FROM pizza_runner.customer_orders
GROUP BY day_of_week, day_index
ORDER BY day_index;