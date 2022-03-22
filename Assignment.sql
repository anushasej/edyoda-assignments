create database if not exists Assignment;
use Assignment;
create table if not exists SalesPeople(
Snum int not null,
Sname varchar(20) not null,
City varchar(20),
Comm int,
unique (Sname),
primary key (Snum)
);
create table if not exists Customers(
Cnum int not null,
city varchar(20) not null,
Snum int,
primary key(Cnum),
foreign key(Snum) references SalesPeople(Snum)
);
desc customers;
create table if not exists Orders(
Onum int not null,
Amt int,
Odate date,
Cnum int,
Snum int,
primary key(Onum),
foreign key(Cnum) references Customers(Cnum),
foreign key(Snum) references Salespeople(Snum)
);
desc orders;

insert Salespeople values 
(1001,'Peel', 'London',12),
(1002,'Serres','Sanjose',13),
(1004,'Motika','London',11),
(1007,'Rifkin','Barcelona',15),
(1003, 'Axelrod','Newyork',10)
;
insert Customers(cnum,cname,city,snum) values
(2001,'Hoffman','London', 1001),
(2002,'Giovanni','Rome',1003),
(2003,'Liu','Sanjose',1002),
(2004,'Grass','Berlin',1002),
(2006,'Clemens','London',1001),
(2008,'Cisneros','Sanjose',1007),
(2007,'Pereira','Rome',1004)
;
alter table customers
add column cname varchar(20);
desc orders;
insert orders values
(3001,18.69,'1990-10-03',2008,1007),
(3003,767.19,'1990-10-03',2001,1001),
(3002,1900.10,'1990-10-03',2007,1004),
(3005,5160.45,'1990-10-03',2003,1002),
(3006,1098.16,'1990-10-03',2008,1007),
(3009,1713.23,'1990-10-04',2002,1003),
(3007,75.75,'1990-10-04',2004,1002),
(3008,4273.00,'1990-10-05',2006,1001),
(3010,1309.95,'1990-10-06',2004,1002),
(3011,9891.88,'1990-10-06',2006,1001)
;
select count(*) from salespeople where sname like 'a%';
select Sname from SalesPeople as A join Orders as B on A.Snum=B.Snum group by B.Snum having Sum(Amt)>2000.00;
select count(*) from salespeople where city = "newyork";
select count(*) from salespeople where city = "london" or city = "paris";
select s.sname,count(o.onum),o.odate from salespeople s inner join orders o 
group by s.snum,o.odate order by s.snum;
