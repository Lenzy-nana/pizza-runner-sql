-- Q8: How many pizzas were delivered that had both exclusions and extras?
SELECT COUNT(*) AS pizzas_with_exclusions_and_extras
FROM pizza_runner.customer_orders co
JOIN pizza_runner.runner_orders ro ON co.order_id = ro.order_id
WHERE ro.cancellation IS NULL AND ro.pickup_time IS NOT NULL
  AND TRIM(co.exclusions) IS NOT NULL AND TRIM(co.exclusions) <> '' AND TRIM(co.exclusions) <> 'null'
  AND TRIM(co.extras) IS NOT NULL AND TRIM(co.extras) <> '' AND TRIM(co.extras) <> 'null';