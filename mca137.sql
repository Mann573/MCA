
-- in Class  13/12/23


call simple_loop();

/*CREATE DEFINER=`root`@`localhost` PROCEDURE `simple_loop`()
BEGIN
	declare counter int default 0;
    
    my_simple_loop: LOOP
    set counter=counter+1;
    if counter = 10 then 
		leave my_simple_loop;
	end if;
    End loop my_simple_loop;
    select 'I can count to 10';
END*/

call calc_salary('1',300.50,'CEO',@my);
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `calc_salary`
(IN empid varchar(2), IN base_sal numeric (5,2), IN dsgn varchar(10),OUT aok numeric (5,2))
BEGIN

	if dsgn='Manager' then
		set base_sal=base_sal+ (base_sal * 0.8);
	end if;
    if dsgn='CEO' then
		set base_sal=base_sal+ (base_sal * 1.5);
	end if;
    if dsgn='Intern' then
		set base_sal=base_sal+ (base_sal * 0.3);
	end if;
   select base_sal;
END
*/


-- in Class  13/12/23



create database mca137pl;
use mca137pl;

create table student (rno varchar(3),name varchar(20));
insert into student values ('101','Shubh'),('102','Dhruval'),('103','Hit');
call curs_nf();

/*CREATE DEFINER=`root`@`localhost` PROCEDURE `curs_nf`()
BEGIN
declare id varchar(3);
declare name1 varchar(20);
declare exit_loop boolean;
declare c1 cursor for select rno,name from student;
declare continue handler for not found set exit_loop=TRUE;
open c1;
l1:LOOP

if exit_loop then
close c1;
leave l1;
end if;


fetch c1 into id,name1;
select id,name1;

end loop l1;

END
*/

create table emp(eno int(3),sal int(20));
insert into emp values (1,10000), (2,15000), (3,7000); 
call cur_sal(); -- From photos

