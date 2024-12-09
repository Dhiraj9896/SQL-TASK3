-- create table customers(customer_id serial primary key,customer_name varchar,city  varchar,phone_number bigint,email varchar,registration_date date);
-- create table orders(order_id serial primary key,customer_id int references customers(customer_id),order_date date,order_amount int,delivery_city varchar,payment_mode varchar);
-- create table products(product_id  serial primary key,	product_name varchar,category varchar,price int,stock_quantity int,supplier_name varchar,supplier_city	varchar,supply_date date);
-- create table orders_item(order_item_id  serial primary key,order_id int references orders(order_id),product_id int references products(product_id),quantity int,total_price int);
  task1-- select customer_name,city,order_date from customers c join orders o on c.customer_id=o.customer_idwhere extract (year from order_date)=2023;
  task2-- select  product_name, category,total_price from customers c
    join orders o on c.customer_id=o.customer_id
    join orders_item oi on o.order_id=oi.order_id
    join products p on oi.product_id=p.product_id where c.city = 'Mumbai';
task 3 -- select customer_name,order_date,total_price from orders o
    join customers c on c.customer_id=o.customer_id
    join orders_item oi on o.order_id=oi.order_id
    join products p on oi.product_id=p.product_id
	where o.payment_mode='Credit Card'
-- task 4 select  product_name,category,total_price from orders o
	join orders_item oi on o.order_id=oi.order_id
    join products p on oi.product_id=p.product_id
	where o.order_date between '2023-01-01' and '2023-06-30';
task 5-- select customer_name,sum (quantity) as total products from  customers c
    join orders o on c.customer_id=o.customer_id
    join orders_item oi on o.order_id=oi.order_id group by customer_name;


	task 2
1  select distinct city from customers;
2  select distinct supplier_name from products;
3  select distinct payment_mode from orders;
4  select distinct category from products;
5  select distinct supplier_city,supplier_name from products;

task 3
select * from customers order by customer_name asc;
select * from  orders_item order by total_price desc;

 
 

 
