# 🍕 Pizza Runner SQL Case Study

This repository contains solutions to the **Pizza Runner Case Study** from [8 Week SQL Challenge](https://8weeksqlchallenge.com/case-study-2/), designed by Danny Ma.

## 📖 Case Study Overview

Danny wants to build a data-driven pizza delivery service — **Pizza Runner** — and needs help analyzing data to improve operations, monitor runner performance, and understand customer preferences.

The database schema contains the following tables:

- `runners` – Info on each pizza delivery runner.
- `customer_orders` – Pizza order details with exclusions and extras.
- `runner_orders` – Tracks which runner delivered which order and related metadata.
- `pizza_names` – Name of each pizza by ID.
- `pizza_recipes` – Default toppings per pizza type.
- `pizza_toppings` – Mapping of topping IDs to names.

## 🧠 Skills Demonstrated

- Data Cleaning with SQL
- Table Joins
- Aggregation and Grouping
- Filtering Nulls and Strings
- Time-based Analysis (hourly/daily trends)
- CASE statements and subqueries

## 🧪 Key Questions & SQL Solutions

Here are some of the key insights extracted from the dataset using SQL:

- How many pizzas were ordered?
- How many unique customer orders were made?
- How many successful orders were delivered by each runner?
- How many of each type of pizza was delivered?
- How many Meat Lovers and Vegetarian pizzas were ordered by each customer?
- What was the maximum number of pizzas delivered in a single order?
- For each customer, how many delivered pizzas had at least 1 change and how many had no changes?
- How many pizzas were delivered with both exclusions and extras?
- What was the total volume of pizzas ordered for each hour of the day?
- What was the volume of orders for each day of the week?

> All queries are written in standard SQL and compatible with PostgreSQL.

## 📁 Folder Structure

```bash
📂 pizza-runner-sql
├── README.md
├── pizza_runner_case_study.pdf
└── solutions
    ├── question_01.sql
    ├── question_02.sql
    ├── ...
```

## ✅ Tools Used

- PostgreSQL
- DB Fiddle / SQLPad
- VS Code (for writing queries)
- GitHub (for collaboration and version control)

## 🙋‍♂️ Author

Solomon Adu-Appiah  
Master of Engineering – Energy Systems  
SQL Enthusiast | Cloud & Data Engineer  
[LinkedIn](https://www.linkedin.com/) | [GitHub](https://github.com/)

## 📝 License

This project is part of the open-source [8 Week SQL Challenge](https://8weeksqlchallenge.com/). Educational use only.
