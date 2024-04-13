-- math method

select abs(-11);
select abs(-1.11);
select ceil(12.34);
select ceil(12.80);
select ceil(12.0);
select ceil(12.01);

-- round
select round(12.1);
select round(12.4);
select round(12.49);
select round(12.5);

-- truncate
select truncate(12.11111111,3);
 
 -- mode
 select mod(10,4);
 
 -- floor
 select floor(10/4);
 
 -- power
 select pow(2,2);
 select pow(10,2);
 
 -- sqrt
 select sqrt(10);
 select sqrt(9);

use virendra;
 select * from student_data;
 select department,name,round(marks) from student_data;
 select department,name,truncate(marks,7) from student_data;
 select department,name,round(marks) from student_data;

 select department,name,mod(marks,7) from student_data;
 
 select department,name,sqrt(marks) from student_data where id=11;
 select department,name,sqrt(marks) from student_data;



