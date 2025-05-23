-- Q5: How many Vegetarian and Meat Lovers were ordered by each customer?
SELECT co.customer_id, pn.pizza_name, COUNT(*) AS pizzas_ordered
FROM pizza_runner.customer_orders co
JOIN pizza_runner.pizza_names pn ON co.pizza_id = pn.pizza_id
GROUP BY co.customer_id, pn.pizza_name
ORDER BY co.customer_id, pn.pizza_name;