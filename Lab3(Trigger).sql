create database mca137pl;
use mca137pl;

create table student (rno varchar(3),name varchar(20));
insert into student values ('101','Shubh'),('102','Dhruval'),('103','Hit');

create table emp(eno int(3),name varchar(20),sal decimal(8,2));
insert into emp values (1,'Mann',10000), (2,'Hit',15000), (3,'Jeet',7000); 



drop table emp_log;

create table emp_log(
eno int(3),
old_salary decimal(8,2),
new_salary decimal(8,2),
updatedtimestamp datetime);

select * from emp;

UPDATE emp set sal = 9000 where eno=1;

select * from emp_log;