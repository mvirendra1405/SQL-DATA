use virendra;
select * from customer order by customer_name;
select * from customer order by customer_name desc;
select * from customer order by customer_name asc;
select * from customer where customer_name='virendra' and country like "a%";
select * from customer where customer_name='virendra' or country like "a%";
select * from customer where not address="kalyan";
select * from customer;
select * from customer where country is null;
select * from customer where country is not null;
delete from customer  where customer_Name="ajay";
set SQL_SAFE_UPDATES=0








 

