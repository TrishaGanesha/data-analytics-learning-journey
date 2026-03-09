--DDL--
--create a new table called persons with col:id,person_name,birth_date,and phone*/--
create table persons(
id INT NOT NULL,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY (id))
select * from persons
--Alter--
--add a new col called email to the persons table--
ALTER TABLE persons add email VARCHAR(50) NOT NULL
select * from persons
--to add in middle we should do from first--
--DROP--
--remove the col phone from the persons table--
ALTER TABLE persons 
DROP COLUMN phone
select * from persons
--delete the persons from database--
DROP TABLE persons
