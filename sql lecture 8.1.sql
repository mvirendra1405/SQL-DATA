select curdate();
select now();
select sysdate();
select last_day(curdate());
select last_day('2023-02-14');
select datediff('2024-02-14','2023-03-15');
select date_format(curdate(),'%d-%c-%Y');
select date_format(curdate(),'%D-%M-%y');
select date_format(curdate(),'%D-%b-%Y');
select date_format(curdate(),'%a-%D-%b-%y');
select date_format(curdate(),'%W-%D-%b-%y');

-- datetime
select date_format(now(),'%W-%D-%b-%y,%h:%i%:%s');






