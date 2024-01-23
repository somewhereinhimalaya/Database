/*   SAVING FOR EXAMS ALTER TABLE  */

--CREATING AND ALTERING TABLE
create table customers(
    customer_id number(10) not null,
    customer_name varchar2(20) not null,
    city varchar2(20) not null,
    CONSTRAINT customerid_pk primary key(customer_id)
);


create table employee(
    employee_id number(10) not null,
    customer_id number(10) not null,
    employee_name varchar2(20) not null,
    employee_trainer varchar2(20) not null,
    employee_dob date,
    constraint employee_id_pk primary key(employee_id),
    constraint customer_id_fk foreign key(customer_id) references customers(customer_id)
);


alter table customers add customer_dob date;


alter table customers modify customer_name varchar2(30);


alter table customers modify customer_name varchar2(30) not null;


alter table customers drop column customer_dob;


alter table customers add customer_dob date;


alter table customers rename to hustomers;


alter table hustomers rename to customers;

--INSERTING VALUE IN CUSTOMERS TABLE
insert all
into customers(customer_id,customer_name,city,customer_dob) values(1,'Hitesh Sharma','Delhi',to_date('1990-12-12','yyyy-mm-dd'))
into customers(customer_id,customer_name,city,customer_dob) values(2,'Sitesh Sharma','Delhi',to_date('1991-12-12','yyyy-mm-dd'))
select * from dual;
delete from customers where customer_id = 1;
delete from customers where customer_id = 2;

--NOW INSERTING VALUE FOR REAL
insert all
into customers(customer_id,customer_name,city,customer_dob) values(1,'Hitesh Sharma','Delhi',to_date('1990-12-12','yyyy-mm-dd'))
into customers(customer_id,customer_name,city,customer_dob) values(2,'Sitesh Sharma','Kathmandu',to_date('1991-12-12','yyyy-mm-dd'))
select * from dual;
*/
--desc employee;

insert all 
into employee(employee_id,customer_id,employee_name,employee_trainer,employee_dob) values(1,1,'Hitesh Sharma','Normi',to_date('1990-12-12','yyyy-mm-dd'))
into employee(employee_id,customer_id,employee_name,employee_trainer,employee_dob) values(2,2,'Sitesh Sharma','Sormi',to_date('1991-12-12','yyyy-mm-dd'))
select * from dual;

-- Using orderby
select *
from employee 
where employee_id>0
order by customer_id desc;

select * 
from customers
where customer_id > 0
order by customer_id asc

-- joining table
select customers.customer_name,employee.employee_name,employee.employee_dob
from customers --primary key
inner join employee  --foreign key
on customers.customer_id=employee.customer_id;


