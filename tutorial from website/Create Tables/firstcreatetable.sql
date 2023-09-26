---------------------------------------------------CREATE TABLE--------------------------------------------------------------------
--Example with no primary key
create table customers(
  customer_id number(10) not null,
  customer_name varchar2(50) not null,
  city varchar2(50)
  );

--Example with primary key
create table customers(
  customer_id number(10) not null,
  customer_name varchar2(50) not null,
  city varchar2(50),
  constraint customers_pk primary key(customer_id)
  );




--------------------------------------CREATE TABLE AS STATEMENT------------------------------------------------------------------------------------
----Example copying all columns of another table

---Example 1 creating a newcustomers table by copying all the columns from the already existing table customers
create table newcustomers
  as(select * from customers where customer-id <5000);

---Example 2 copying selected columns of another table
--This exmaple will create a new table called newcustomers2 with specific columns columns_if and customer_name
create table newcustomers2
as (select customer_id,customer_name
  from customers 
  where customer_id <5000);

--Example 3 copying selected columns from multiple tables 
--here we will copy the selected columns from two tables called regularcustomers and irregularcustomers to newcustomers3
--first we will create and then copy it
create table "regularcustomers"
  ("rcustomer_id" number(10,0) not null enable,
  "rcustomer_name" varchar2(50) not null enable,
  "rc_city" varchar2(50)
  )
/
create table "irregularcustomers"
("ircustomer_id" number(10,0) not null enable,
  "recustomer_name" varchar2(50) not null enable,
  "irc_city" varchar2(50)
  )
/
create table numcustomers3
as (select regularcustomers.rcustomer_id,regularcustomers.rc_city,iregularcustomers.ircustomer
  from regularcustomers,iregularcustomers
  where regularcustomers.rcustomer_id = irregularcustomers.ircustomers_id
  and regularcustomers.rcustomer_id<5000
  );







-----------------------------------------ORACLE ALTER TABLE STATEMENT----------------------------------------------------
--Example 1 add a new column customer_age into the table customers
--doing this you you will finally add a new table called customer_age in table customers
alter table customers
  add customer_age varchar2(50)

--Example 2 add multiple columns in the single table
  --doing this you finally added two new columns called customer_type and customer_address into the table customers
alter table customers
  add(customer_type varchar2(50),
    customer_address varchar2(50));

--Example 3 alter column of a table
--Here you are updating the customer_name charater to contain 100 max character
alter table customers
  modify customer_name varchar2(100) not null;


--Example 4 modify multiple columns of a table
--here we modified two columns: customer_name and city 
alter table customers
  modify (customer_name varchar2(100) not null,
          city varchar2(100));

--Example 5 drop column of a table
--drop means deletetion 
alter table customers
  drop column customer_name;

--Example 6 rename column of a table
alter table customers
  rename column customer_name to cname;

--Example 7 rename table
alter table customers
  rename to retailers





-----------------------------------------ORACLE DROP TABLE STATEMENT------------------------------------------------------------------
--Example 1 Drop table with purge paramter
--deleting this way you won't get it on the recycle bin 
drop table customers purge;



----------------------------------------ORACLE GLOBAL TERMPORARY TABLES----------------------------------------------------------------
--Temporary tables can't have foreign keys
--Example 1: 
create global temporary table students(
  student_id numeric(10) not null,
  student_name varchar2(10) not null,
  student_address varchar2(50)
  );



------------------------------------ORACLE VIEW-----------------------------------------------------------------
--view is created by a query joining one or more tables
--Example 1 here we will first create two tables and create a view query
--suppliers table
create table "suppliers"(
  "supplier_id" number,
  "supplier_name" varchar2(4000),
  "supplier_address" varchar2(4000)
  )
/
--orders table
create table "orders"(
  "order_no." number,
  "quantity" number,
  "price" number
)
/
--Create view query named sup_orders
create view sup_orders as 
select suppliers.supplier_id,orders.quantity,orders.price
from suppliers
innner join orders
on suppliers.supplier_id=supplier_id
where suppliers.supplier_name="vojo";
/*
ouput 
view created
0.21 seconds
*/



--Example 2 check the oracle view by this query
select * from sup_orders;


---------------------------------------------ORACLE UPDATE VIEW--------------------------------------------------------
--Example 1 create or replace view
--Write query to update the definition of oracle view called sup-orders without dropping it 
create or replace view sup-orders as 
  select suppliers.suppplier_id,orders.quanity,orders.price
  from suppliers
  inner join orders
  on suppliers.supplier_id=supplier_id
  where suppliers.supplier_name='hcl'

--Example 2 check oracle view by this query
select * from sup_orders;

--Example 3 oracle drop view
  --remove the delete the view completely
drop view sup_orders;
