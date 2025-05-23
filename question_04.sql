-- Q4: How many of each type of pizza was delivered?
SELECT pn.pizza_name, COUNT(*) AS pizzas_delivered
FROM pizza_runner.customer_orders co
JOIN pizza_runner.runner_orders ro ON co.order_id = ro.order_id
JOIN pizza_runner.pizza_names pn ON co.pizza_id = pn.pizza_id
WHERE ro.cancellation IS NULL AND ro.pickup_time IS NOT NULL
GROUP BY pn.pizza_name;