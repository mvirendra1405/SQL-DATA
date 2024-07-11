use virendra;
create table customer(customer_id int ,customer_Name varchar(100),country varchar(20),address varchar(30),pincode int);
desc customer;
insert into customer values(1,'himanshu','india','ghatkopar',400077),
(2,'virendra','america','newyork',8585851),
(3,'rahul','austrailia','perth',8585835),
(4,'pawan','pakistan','karachi',8585525),
(5,'Vijay','africa','capetown',8578577);
select * from customer;
select customer_Name from customer;
insert into customer values(6,'shubham','pakistan','karachi',8585525);
-- distinct means different value
select distinct country from customer; 




