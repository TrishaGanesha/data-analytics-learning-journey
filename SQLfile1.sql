use MyDatabase
select * from customers
/* order by to sort the data asc and desc example score highest to lowest*/
select * from customers order by score asc
-- sort by asc for country --
select * from customers order by country
--but country wise score is sorted in asc order sort,so sort again with score--
select * from customers order by country asc,score desc
--group by rows with same value,aggregates a col by another col,first grouo by does its work then thier scores as combined--
select country, sum(score) as total_score,count(id) as total_customer from customers group by country
--  all col in the select must be either aggregated or included in the group by--
select first_name,country,sum(score) as total_score from customers group by country,first_name
-- having =filter data after aggregation can be used only by group by before aggregation use where after aggregration having---
/* find the avy score for each country considering oly customers with a score not equal to 0 and return only those countries with an average score greater than 430*/
select country, avg(score) as avg_score from customers where score!=0 group by country having avg(score)>430


--Distinct for unique value,1 from 2 select 3 distinct--
--return unique list of all countries--
select distinct country from customers

--top(limit) retrict the number if rows returned--
--retrieve only 3 customer--
select top 3 * from customers

--retrieve the top 3 customers with the highest scores--
select top 3 * from customers order by score desc

--get 2 most recent orders--
select * from orders
select top 2 * from orders order by order_date desc 

---coding order select distinct top 2  col1,sum(col2) from table where col=10 group by col1 having sum(col2)>30 order by col1 asc---
---execution order from,where,group by ,having,select distinct ,order by,top