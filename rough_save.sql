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






-- THE BELOW QUERIES ARE OF FUNCTION

create table salesdepartments(
    item varchar2(4000),
    sales number,
    billing_address varchar2(4000)
);

insert all
into salesdepartments(item, sales, billing_address) values('shoes', 120, 'Agra')
into salesdepartments(item, sales, billing_address) values('Belts', 105, 'Kolkata')
into salesdepartments(item, sales, billing_address) values('Shoes', 45, 'Allahabad')
into salesdepartments(item, sales, billing_address) values('Sari', 210, 'Varanasi')
into salesdepartments(item, sales, billing_address) values('Sari', 5000, 'Chennai')
into salesdepartments(item, sales, billing_address) values('Medicines', 250, 'Salem')
into salesdepartments(item, sales, billing_address) values('Computer', 210, 'Delhi')
into salesdepartments(item, sales, billing_address) values('Computer', 1000, 'Kanpur')
select * from dual;

select item,sum(sales) as totalsales
from salesdepartments
group by item
having sum(sales) <1000;

select billing_address,sum(sales) as totalsales
from salesdepartments
group by billing_address
having sum(sales)<1000;



-- USING AGGREGTATE FUNCTIONS LIKE SUM AND COUNT


insert all
into customer1(name,age,salary,states) values('mohan',16,1200,'bihar')
into customer1(name,age,salary,states) values('rohan',21,25000,'bihar')
into customer1(name,age,salary,states) values('teipratap',26,5600,'bihar')
into customer1(name,age,salary,states) values('chanchal',21,25000,'delhi')
into customer1(name,age,salary,states) values('charu',21,23000,'delhi')
into customer1(name,age,salary,states) values('chanda',27,27000,'delhi')
into customer1(name,age,salary,states) values('chandni',31,31000,'delhi')
into customer1(name,age,salary,states) values('pralaynath',56,76000,'tamilnadu')
into customer1(name,age,salary,states) values('gundaswami',65,87000,'tamilnadu')
into customer1(name,age,salary,states) values('hina',18,18000,'maharashtra')
select * from dual;


select name,sum(age) as someages
from customer1
where age>1
group by name
having sum(age) > 1;

select states,count(*) as numberofcustomer
from customer1
where salary > 1
group by states
having count(*) >0;

select name, min(age) as agegranted
from customer1
where salary>20000
group by name
having min(age) <25;


select name,max(age) as agegranted
from customer1
where salary>20000
group by name
having max(age) > 30;

select states,avg(age) as averageage
from customer1
group by states;


-- The question are asked using this kind of aggregate functions
select sum(age) as totalsum
from customer1;

select avg(age) as averageage
from customer1;

select min(age) as minage
from customer1;

select max(age) as maxage
from customer1;

select count(age) as countsage
from customer1;

select count(age) as countage
from customer1
where salary>20000;

select * 
from customer1
where name like 'c%';

select * 
from customer1
where age like '21';

