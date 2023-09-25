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
  1customer_name varchar2(50) not null,
  city varchar2(50),
  constraint customers_pk primary key(customer_id)
  );


