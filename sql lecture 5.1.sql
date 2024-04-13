-- limit

select * from student_data;
select * from student_data limit 4;
select * from student_data limit 10;

-- we have found first high amount from table
select distinct paid_fees from student_data order by paid_fees desc limit 1;
select distinct paid_fees from student_data order by paid_fees desc limit 1,1;
select distinct paid_fees from student_data order by paid_fees desc limit 2,1;

-- this is for lowest value
select distinct paid_fees from student_data order by paid_fees asc limit 1;

select * from student_data where id in (1,10,12);
select * from student_data where name in ('subhash','ambuj');
SET SQL_SAFE_UPDATES = 0;
update student_data set paid_fees = paid_fees+(paid_fees*0.15)where id in (10,12);

show databases;
use virendra;
select * from student_data;
select * from student_data where id not in (11,14);

delete from student_data where id in (10,12);
