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






    
    
    
