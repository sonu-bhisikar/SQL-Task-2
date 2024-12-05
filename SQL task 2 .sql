--select customer_name, city, order_date from customers c join orders o 
--on c.customer_id = o.customer_id where extract (year from o.order_date) = 2023;

--select product_name, category, total_price from customers c 
--join orders o on c.customer_id = o.customer_id
--join order_items oi on o.order_id =  oi.order_id
--join products p on oi.product_id = p.product_id where c.city = 'Mumbai'; 

--select customer_name,order_date,total_price from customers c 
--join orders o on c.customer_id = o.customer_id
--join order_items oi on o.order_id =  oi.order_id
--where o.payment_mode = 'Credit Card';

--select product_name, category, total_price from orders o
--join order_items oi on o.order_id =  oi.order_id
--join products p on oi.product_id = p.product_id
--where order_date between '2023-01-01' and '2023-06-30';

--select customer_name,sum(oi.quantity) total_pro_ordered from customers c
--join orders o on c.customer_id = o.customer_id
--join order_items oi on o.order_id =  oi.order_id group by customer_name

--select distinct city from customers;

--select distinct supplier_name from products;

--select distinct payment_mode from orders;

--select distinct category from products;

--select distinct supplier_city from products;


--select * from customers order by customer_name;

--select * from order_items order by total_price desc;

--select order_id, customer_id, order_date from orders order by order_date desc;

--select city, count(order_id) from customers c join
--orders o on c.customer_id = o.customer_id group by city order by city asc;

--select * from customers order by customer_name limit 10;

--select * from products order by price desc limit 5;

-- select * from customers order by customer_id limit 10 offset 10;

-- select order_id, order_date, customer_id from orders where extract (year from order_date) = 2023 order by order_date limit 5;

--select distinct delivery_city from orders limit 10 offset 10;


--select count(order_id) from orders;

--select sum(order_amount) from orders where payment_mode = 'UPI';

--select avg(price) from products;

--select min(total_price),max(total_price) from order_items oi 
--join orders o on oi.order_id = o.order_id where extract (year from order_date) = 2023;

--select product_id, sum(quantity) from order_items group by product_id;


--select customer_name from customers where customer_id in (select customer_id from orders where extract (year from order_date)= 2022
--intersect select customer_id from orders where extract (year from order_date)= 2023 );

--select product_name from products where product_id in(select product_id from orders o join order_items oi on oi.order_id = o.order_id where extract (year from order_date)= 2022
--except 
--select product_id from orders o join order_items oi on oi.order_id = o.order_id where extract (year from order_date)= 2023)

-- select supplier_city from products
-- except
-- select city from customers


--select supplier_city from products
--union
--select city from customers


--select product_name from products where product_id in (select product_id from products intersect 
--select product_id from order_items oi join orders o on oi.order_id = o.order_id where extract (year from order_date) = 2023)






