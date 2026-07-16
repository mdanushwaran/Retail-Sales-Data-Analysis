create database Retail_sales;
use Retail_sales;

select * from brands;
select * from categories;
select * from customers;
select * from order_items;
select * from orders;
select * from products;
select * from staffs;
select * from stocks;
select * from stores;

-- changing data type --order_itemsstocks

alter table customers modify customer_id varchar(50);
alter table categories modify category_id varchar(50);
alter table brands modify brand_id varchar(50);
alter table order_items modify order_id varchar(50),modify item_id varchar(50),modify product_id varchar(50);
alter table orders modify order_id varchar(50),modify customer_id varchar (50),modify store_id varchar(50),
modify staff_id varchar(50);
alter table products modify product_id varchar(50),modify brand_id varchar(50),modify category_id varchar(50);
alter table staffs modify staff_id varchar(50),modify store_id varchar(50),modify manager_id varchar(50);
alter table stocks modify store_id varchar(50),modify product_id varchar(50), modify quantity varchar(50);
alter table stores modify store_id varchar(50);

-- primary key --

alter table brands add constraint up_brands primary key (brand_id);
alter table categories add constraint up_categories primary key (category_id);
alter table customers add constraint up_customers primary key (customer_id);
alter table orders add constraint up_orders primary key (order_id);
alter table products add constraint up_products primary key (product_id);
alter table staffs add constraint up_staffs primary key (staff_id);
alter table stores add constraint up_stores primary key (store_id);

-- foreign key--
-- First, set invalid order_ids to NULL
UPDATE order_items
SET order_id = NULL
WHERE order_id NOT IN (SELECT order_id FROM orders);
 
set sql_safe_updates=0;
 
-- Then add the constraint (NULLs bypass FK checks)
ALTER TABLE order_items 
ADD CONSTRAINT new_constraint 
FOREIGN KEY (order_id) REFERENCES orders(order_id);

-- 3) Join orders, order_items, and products to display detailed line items. --

select o.order_id , p.product_id , p.product_name , oi.quantity , oi.list_price , (oi.quantity * oi.list_price) as Total_Price from orders as o 
inner join order_items as oi ON o.order_id = oi.order_id inner join products as p ON p.product_id = oi.product_id;

-- 4) Write a query to group sales (total_price) by each store_id.

select o.store_id , sum(oi.quantity * oi.list_price) as Total_price from orders as o inner join order_items as oi ON o.order_id = oi.order_id group by store_id;

-- 5) Use ORDER BY and LIMIT to get the top 5 most sold products by quantity.

select * from order_items order by quantity desc limit 5;


