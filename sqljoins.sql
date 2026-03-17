create database join_sql1;
use join_sql1;

create table customers(
customerid int,
customername varchar(100),
contactname varchar(100),
address varchar(100),
city varchar(100),
postalcode varchar(100),
country varchar(100),
PRIMARY KEY(customerid)
);

create table orders(
orderid int not null,
customerid int,
employeeid int,
orderdate datetime,
shipperid int,
primary key(orderid)
);

insert into customers values(1,'anu','anu','Pune','Pune','12303','India');
insert into customers values(2,'banu','banu','bangalore','bangalore','14303','India');
insert into customers values(3,'anrun','anrun','mumbai','mumbai','12563','India');
insert into customers values(4,'varun','varun','bengal','bengal','13093','India');
insert into customers values(5,'anusha','anusha','patna','patna','18933','India');
insert into customers values(6,'anudeep','anudeep','jaipur','jaipur','13303','India');
insert into customers values(7,'pradeep','pradeep','Pune','Pune','12353','India');
insert into customers values(8,'akash','akash','chennai','chennai','12993','India');
insert into customers values(9,'priya','priya','Pune','Pune','12223','India');
insert into customers values(10,'anupriya','anupriya','Pune','Pune','32303','India');

insert into  orders values(101,1,1,sysdate()-10,98344);
insert into  orders values(102,1,1,sysdate()-20,98004);
insert into  orders values(103,4,4,sysdate()-40,98774);
insert into  orders values(104,5,5,sysdate()-10,99834);
insert into  orders values(105,6,6,sysdate()-30,98374);
select * from customers;
select * from orders;
select a.customerid,a.customername,a.country,b.orderid,b.orderdate from customers a left join orders b on a.customerid=b.customerid;
select b.customerid,a.customername,a.country,b.orderid,b.orderdate from customers a right join orders b on a.customerid=b.customerid;
select a.customerid,a.customername,a.country,b.orderid,b.orderdate from customers a inner join orders b on a.customerid=b.customerid;
select a.customerid,a.customername,a.country,b.orderid,b.orderdate from customers a , orders b where a.customerid=b.customerid;
select a.customerid,a.customername,a.country,b.orderid,b.orderdate from customers a left join orders b on a.customerid=b.customerid;
/* there is full outer join in mysql so instead of this*/
select a.customerid,a.customername,a.country,b.orderid,b.orderdate from customers a left join orders b on a.customerid=b.customerid
union 
select a.customerid,a.customername,a.country,b.orderid,b.orderdate from customers a right join orders b on a.customerid=b.customerid;
select a.customerid,a.customername,a.country,b.orderid,b.orderdate from customers a cross join orders b on a.customerid=b.customerid;



