Table1         Table2

| COL A |     | COL A |
|-------|     |-------|
| 1     |     | 1     |
| 1     |     | 1     |
| 1     |     | 1     |


What is the output of the following query?
1.  select * from table1
    Left join table2 
    on table1.col_A=table2.col_A
    
2.  select * from table1
    inner join table2 
    on table1.col_A=table2.col_A
    
3.  select * from table1
    right join table2 
    on table1.col_A=table2.col_A
    
ANSWER: 

| col_A | col_A |
|-------|-------|
| 1     | 1     |
| 1     | 1     |
| 1     | 1     |
| 1     | 1     |
| 1     | 1     |
| 1     | 1     |
| 1     | 1     |
| 1     | 1     |
| 1     | 1     |


/*
An eCommerce company's online order table.

  col_name    | col_type
--------------+-------------------
order_id      | bigint
product_id    | bigint
customer_id   | bigint
order_dt      | date
qty           | integer
unit_price_usd| float
channel       | varchar(20) -- mobile, desktop  

Write a query to return the top 3 and bottom 3 products this month ranked by sales.
sales = sum(unit_price_usd * qty)
*/

WITH top AS(
	SELECT product_id, SUM(unit_price_usd * qty)
	FROM orders
    WHERE month(order_dt)=month(curdate())
	GROUP BY product_id
	ORDER BY SUM(unit_price_usd * qty) DESC 
	LIMIT 3
), 
bottom AS (
	SELECT product_id, SUM(unit_price_usd * qty) 
	FROM orders
    WHERE month(order_dt)=month(curdate())
	GROUP BY product_id
	ORDER BY SUM(unit_price_usd * qty) 
	LIMIT 3
)
SELECT top.product_id, 'top'  AS category
FROM top
UNION ALL                                                                               ---- HINT
SELECT bottom.product_id, 'bottom' AS category
FROM bottom;

--or use rank/dense_rank window function 

/*
We want to expand our subscription business and make it easy for our customers to have certain products delivered on a regular basis instead of having to reorder them every time.
Products that are purchased multiple times by the same customers during this month can be considered as weekly or bi-weekly products for subscription.
Find top 10 products that are purchased by the same customers this month (August 2021) and report their id.
Rank those products based on the number of unique customers.
*/




    
    
    
