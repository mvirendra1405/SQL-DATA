use virendra;
show tables;
select * from student_data;
select id,department,name,marks,
case
when marks>=35 and marks<=60 then 'third class'
when marks>60 and marks<80 then 'second class'
when marks>=80 and marks<=100 then 'first class'
end as result from student_data data order by marks desc;