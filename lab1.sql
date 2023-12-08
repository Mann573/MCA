use books;
select * from book_master;

-- Calling procesdure
call `new_procedure`();
call new_procedure3('Mann');
call without_concat('Kirti');

-- Calling Function
select f_age(stud_marks.dob);