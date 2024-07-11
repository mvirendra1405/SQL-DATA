use virendra;
create table customer(customer_id int ,customer_Name varchar(100),country varchar(20),address varchar(30),pincode int);
desc customer;
insert into customer values
(7,'virendra','america','newyork',9585851),
(8,'rahul','austrailia','perth',8585835),
(9,'pawan','pakistan','karachi',6585525),
(10,'Vijay','africa','capetown',8578577),
(11,'himanshu','india','ghatkopar',400077),
(12,'virendra','usa','kurla',8585851),
(13,'rahul','austrailia','perth',4585835),
(14,'rohit','pakistan','dadar',8585525),
(15,'Vijay','africa','capetown',8578577),
(16,'ambuj','india','ghatkopar',400077),
(17,'virendra','america','newyork',8585851),
(18,'ashok','westindies','perth',3585835),
(19,'pawan','pakistan','mankhurd',2585525),
(20,'Vijay','africa','capetown',8578577),
(21,'himanshu','india','ghatkopar',400077),
(22,'dheeraj','nepal','newyork',1585851),
(23,'Sachin','austrailia','kalyan',8585835),
(24,'pawan','saudi','karachi',8585525),
(25,'pankaj','africa','capetown',8578577),
(26,'himanshu','india','ghatkopar',400077),
(27,'virendra','america','newyork',8585851),
(28,'Baccha','austrailia','perth',8585835),
(29,'pawan','pakistan','karachi',8585525),
(30,'ajay','africa','capetown',8578577);
insert into customer values(31,'ajay',null,'capetown',8578577);

select * from customer;
select customer_Name from customer;
insert into customer values(6,'shubham','pakistan','karachi',8585525);
-- distinct means different value
select distinct country from customer; 




