Data Validation Queries
1️⃣ Check for Duplicate Order IDs:

SELECT order_id, COUNT(*) as count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

2️⃣ Check for Missing Values:

select * from orders
where customer_name is null
or email is null
or price is null;

3️⃣ Check Invalid Emails:

select * from orders where email not like "%@%.%";

4️⃣ Check Negative or Zero Prices:

select * from orders
where price <=0;

5️⃣ Check Date Issues:

select * from orders
where order_date is null;

6️⃣ Check Category Standardization:

select distinct category from orders;

