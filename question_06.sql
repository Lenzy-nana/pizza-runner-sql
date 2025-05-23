-- Q6: What was the maximum number of pizzas delivered in a single order?
SELECT MAX(pizza_count) AS max_pizzas_in_single_order
FROM (
    SELECT co.order_id, COUNT(*) AS pizza_count
    FROM pizza_runner.customer_orders co
    JOIN pizza_runner.runner_orders ro ON co.order_id = ro.order_id
    WHERE ro.cancellation IS NULL AND ro.pickup_time IS NOT NULL
    GROUP BY co.order_id
) AS order_counts;