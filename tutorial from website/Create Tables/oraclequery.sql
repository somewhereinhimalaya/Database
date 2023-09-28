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
