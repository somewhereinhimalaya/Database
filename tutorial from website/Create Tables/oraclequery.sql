--------------------------------------------A QUICK OVERVIEW OF ORACLE------------------------------------------------------------------
--Oracle Select Query
select * from customers
--Oracle Insert Query
insert into customers values(101,'rahul','delhi');
--Oracle Update Query
update customers set name='bob', city='london' where id=101;
--Oracle Delete Query
delete from customers where idc=101;
--Oracle Truncate Query
truncate table customers;
--Oracle Drop Query
drop table customer;
--Oracle Create Query
create table customers(
  id number(10) not null,
  name varchar2(50) not null,
  city varchar(50),
  constraint customers_pk primary key(id)
  );
--Oracle ALter Query
alter table customers
add age varchar2(50);




-----------------------------------------ORACLE SELECT STATEMENT---------------------------------------------------------------------

--Example 1 
            --Select all fields from table named customers
select *
from customers;

--Example 2
            --Select specific fields
select age,address,salary
from customers
where age<25
and salary>'20000'
order by age asc,salary desc;

--Example 3
          --Select fields from multiple tables(Join)
select customers.name,courses.trainer
from courses
inner join customers
on courses.course.id=course_id
order by name;



-----------------------------------------------ORACLE INSERT STATEMENT--------------------------------------------------------------------

--Example 1
          --Insert by value keyword
insert into suppliers(supplier_id,supplier_name) values(50,'Flipkart');

--Example 2
          --Insert by select statement
insert into suppliers(supplier_id,supplier_name)
select age,address
from customers
where age>20;

--Example 3
        --Check the number of rows that you want to insert
select count(*)
from customers
where age>20;



------------------------------------------------ORACLE INSERTALL STATEMENT----------------------------------------------------------------

--Example 1
        --Insert multiple records in one table 
           --insert 3 rows into the suppliers table
insert all
  into suppliers(supplier_id,supplier_name) values(20,'Google')
  into suppliers(supplier_id,supplier_name) values(21,'Microsoft')
  into suppliers(supplier_id,supplier_name) values(22,'Apple')
select * from dual

--Example 2 
        --Insert multiple records in a single tavble 
          --Using single line command for each statement
insert into suppliers(supplier_id,supplier_name) values(1000,'Google')
insert into suppliers(supplier_id,supplier_name) values(2000,'Microsoft')
insert into suppliers(supplier_id,supplier_name) values(3000,'Apple')

--Example 3
          --Insert into multiple table
insert all
    into suppliers(supplier_id,supplier_name) values(30,'Google')
    into suppliers(supplier_id,supplier_name) values(31,'Microsoft')
    into customers(age,name,address) values(29,'Luca Warsi','New York')
select * from dual;



------------------------------------------ORACLE UPDATE STATEMENT----------------------------------------------------------------

--Example 1 
        --Oracle update Example(Update Single Column)
update suppliers
set supplier_name='kingfisher'
where supplier_id=29;

--Example 2
        --Update multiple columns of a table with a single statement
update suppliers
set supplier_address='Agra'
    supplier_name='Bata Shoes'
where supplier_id=1;

--Example 3
        --Oracle update Example: By selecting records from another table
update customers
set name=(select supplier_name from suppliers
          where suppliers.supplier_name=customers.name)
where age<25;


-------------------------------------------ORACLE DELETE STATEMENT-------------------------------------------------------------------
