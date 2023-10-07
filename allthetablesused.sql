create table employee1(
    id number(10) not null,
    name varchar(20) not null,
    city varchar(20) not null
);
create table employee2(
    id number(10) not null,
    name varchar2(20) not null,
    designation varchar2(20) not null
);

insert all
	into employee1(id,name,city) values(1,'shristee','raipur')
	into employee1(id,name,city) values(2,'heena','nagpur')
	into employee1(id,name,city) values(3,'suman','bhilai')
	into employee1(id,name,city) values(4,'arun','korba')
	into employee1(id,name,city) values(5,'dolly','raipur')
	into employee1(id,name,city) values(6,'soniya','bhilai')
	into employee1(id,name,city) values(7,'dhruv','durg')
	into employee1(id,name,city) values(8,'rajat','korba')
	into employee1(id,name,city) values(9,'priyanka','raipur')
	into employee1(id,name,city) values(10,'tushar','raipur')
	into employee2(id,name,designation) values(1,'shristee','shareholder')
	into employee2(id,name,designation) values(2,'heena','executive officer')
	into employee2(id,name,designation) values(3,'suman','operating officer')
	into employee2(id,name,designation) values(4,'arun','financial officer')
	into employee2(id,name,designation) values(5,'dolly','Technology officer')
	into employee2(id,name,designation) values(6,'soniya','Sharehnolder')
	into employee2(id,name,designation) values(7,'dhruv','Technology officer')
	into employee2(id,name,designation) values(8,'rajat','financial officer')
	into employee2(id,name,designation) values(9,'priyanka','operating officer')
	into employee2(id,name,designation) values(10,'tushar','executive officer')
select * from dual
