select abs(-15.35);

select pow(3.25,2.25);

select round(3.1417,3);

select truncate(3.1417,3);

select sqrt(17), sqrt(-13) ;

select exp(5);

select ceil(15.72), floor(15.72);

select mod(13,5);

select DATE_ADD("2023-07-05", INTERVAL 275 MONTH);

select sin(100),log10(100);

create database books;
use books;

create table book_master(
	no int(1),
    title varchar(50),
    author varchar(25),
    publication varchar(50),
    price decimal(6,3),
    edition varchar(20));


insert into book_master (no,title,author,publication,price,edition) values
(1,'Mysql for professionals','Ivan bayross','spd', 400.5,'1st'),
(2,'Database system concepts','korth','Mcgraw Hill', 950.00,'6th'),
(3,'Database management systems','Raghu Ramakrishnan','Mcgraw hill', 570.20,'2nd'),
(4,'Basics of mathematics','Dr. K. R. Kachot','Mahajan publishing house', 215.40,'1st'),
(5,'Wings of fire','Dr. A. P. J. abdul kalam','Universities press private limited',381.00,'1st'),
(6,'Five point someone','Chetan Bhagat','Rupa & co.',212.00,'1st'),
(7,'C++ Prog.','Subhash KU','Pearson',350.00,'2nd');

select author from book_master where binary substring(author,1,1) Between'A' and 'Z';

select upper(author),lower(author) from book_master;

select cast(concat(char(ascii('B')),char(ascii('A')),char(ascii('D'))) as char)as output;


select concat('****',right(price,3)) from book_master;

select concat(left(price,3),'*/*/') from book_master;

select replace(publication,'spd','Pearson') from book_master;

select case when right(title,5)='Prog.' then trim(trailing 'Prog.' from title) else title end from book_master;

select title from book_master where  title like '%++%';

Alter table book_master modify author varchar(30);
desc book_master;


Alter table book_master add column author2 varchar(30);


create table stud_marks(
	no int(2),
    fname varchar(25),
    lname varchar(25),
    m1 int(3),
    m2 int(3),
    m3 int(3),
    dob date);
    
insert into stud_marks values
('1','Mann','Shah',82,45,66,'2000-08-03'),
('23','Parthiv','Soni',92,75,69,'2001-03-01'),
('18','Hit','Shah',51,72,88,'2001-01-31'),
('50','Shruti','Raval',42,76,57,'2002-11-21'),
('45','Jeel','Upadhyay',23,57,40,'2001-10-06'),
('3','Jatin','Solanki',20,50,38,'2002-02-10'),
('17','Mohit','Parmar',77,82,92,'2001-08-03'),
('39','Gautam','Chauhan',19,29,10,'2000-02-15'),
('11','Chirag','Dudhrejia',50,60,93,'2001-06-11'),
('19','Shubham','Mishra',78,88,83,'2001-07-25'),
('20','Sanjay','Manjrekar',55,41,30,'2001-05-29');

insert into stud_marks (no,fname,lname,m1,m2,dob) values (22,'Bhupendra','Jogi',42,76,'2001-09-11');
insert into stud_marks (no,fname,lname,m1,m3,dob) values (41,'Neel','Soni',42,39,'2002-10-01');


select no,lname,fname from stud_marks;

select round(datediff(current_date(),dob)/365) as age from stud_marks;

select no,m1+m2+m3 as total from stud_marks;

select round((m1+m2+m3)/3,2) as Percentage from stud_marks;


select no 
from stud_marks 
where m1=(select max(m1) from stud_marks) or m2=(select max(m2) from stud_marks) or m3=(select max(m3) from stud_marks);

select *,m1+m2+m3 as total from stud_marks where m1+m2+m3=(select max(m1+m2+m3) from stud_marks);

select * from stud_marks where fname like 'S%';

select * from stud_marks where lname like '%kar';

select *,round((m1+m2+m3)/3,2) as Percentage 
from stud_marks 
where m1 < 33 or m2 < 33 or m3 < 33;


select *,round((m1+m2+m3)/3,2) as Percentage 
from stud_marks 
where m1 > 33 and m2 > 33 and m3 > 33 and (m1+m2+m3)/3 < 60;

select *,m1+m2+m3 as total from stud_marks where m1+m2+m3 between 50 and 60;

-- ************************
drop table stud_marks;


select * from stud_marks where fname not like 'S%';

update stud_marks set m1 = 40 where m2+m3 >= 100;

select * from stud_marks where m1 in (50,60,70) or m2 in (50,60,70) or m3 in (50,60,70);

select * from stud_marks where month(dob)=1;

select * from stud_marks where (day(dob)%2)=0;

select no,dob,timestampdiff(month,dob,current_date()) as month_passed from stud_marks;

select * from stud_marks where month(dob) between 1 and 3;

select date_add(current_date(),INTERVAL 10 DAY);

select fname from stud_marks 
where fname like '%a%' or fname like '%e%' or fname like '%i%' or fname like '%o%' or fname like '%u%'; 

select fname from stud_marks 
where fname not like '%a%' and fname not like '%e%' and fname not like '%i%' and fname not like '%o%' and fname not like '%u%';

select count(no) from stud_marks where fname like 'S%';

select count(no) from stud_marks where lname like '%kar';

select no,concat(substring(fname,1,3),right(lname,3)) from stud_marks;

select *
from stud_marks 
where m1 is null or m2 is null or m3 is null;

select * from stud_marks where fname is not null;

select *,soundex(lname),soundex("Shah")
from stud_marks
where soundex(lname) = soundex("Shah");

select floor(rand() * 1000) + unix_timestamp(curdate()) as random_number;

select concat(fname, ' was born on ', date_format(dob,"%W")) from stud_marks;