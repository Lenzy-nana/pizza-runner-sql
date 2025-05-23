-- Q7: For each customer, how many delivered pizzas had at least 1 change and how many had no changes?
SELECT 
    co.customer_id,
    CASE 
        WHEN (TRIM(co.exclusions) IS NULL OR TRIM(co.exclusions) = '' OR TRIM(co.exclusions) = 'null')
          AND (TRIM(co.extras) IS NULL OR TRIM(co.extras) = '' OR TRIM(co.extras) = 'null') 
        THEN 'no_changes'
        ELSE 'with_changes'
    END AS change_status,
    COUNT(*) AS pizza_count
FROM pizza_runner.customer_orders co
JOIN pizza_runner.runner_orders ro ON co.order_id = ro.order_id
WHERE ro.cancellation IS NULL AND ro.pickup_time IS NOT NULL
GROUP BY co.customer_id, change_status
ORDER BY co.customer_id, change_status;