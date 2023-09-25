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

---Example creating a newcustomers table by copying all the columns from the already existing table customers
create table newcustomers
  as(select * from customers where customer-id <5000);

---Example copying selected columns of another table
--This exmaple will create a new table called newcustomers2 with specific columns columns_if and customer_name
create table newcustomers2
as (select customer_id,customer_name
  from customers 
  where customer_id <5000);

--Example copying selected columns from multiple tables 
--here we will copy the selected columns from two tables called regularcustomers and irregularcustomers to newcustomers3

