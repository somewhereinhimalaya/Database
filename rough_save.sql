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
