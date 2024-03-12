use virendra;
select * from student_data;
select count(id),department from student_data group by department;
insert into student_data value (15,'social','ddddd',55,35000,75);
select max(marks) from student_data;
select count(id),department from student_data group by department having avg(marks)>50;
select avg(marks),department from student_data group by department;
