-- Q3: How many successful orders were delivered by each runner?
SELECT runner_id, COUNT(*) AS successful_orders
FROM pizza_runner.runner_orders
WHERE cancellation IS NULL AND pickup_time IS NOT NULL
GROUP BY runner_id;