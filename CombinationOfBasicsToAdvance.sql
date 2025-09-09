-- 1. Create table
create database mypraactise;
use mypraactise;
CREATE TABLE messages (
    message_id INT PRIMARY KEY,
    sender_id INT NOT NULL,
    receiver_id INT NOT NULL,
    content VARCHAR(255),
    sent_date DATETIME
);

-- 2. Insert data
INSERT INTO messages (message_id, sender_id, receiver_id, content, sent_date)
VALUES
(100, 2520, 6987, 'Send this out now!', '2021-08-16 00:00:00'),
(922, 3601, 4500, 'Get on the call', '2022-08-10 00:00:00'),
(819, 2310, 4500, 'What''s the status on this?', '2022-07-10 00:00:00'),
(743, 3601, 8752, 'Let''s take this offline', '2022-06-14 00:30:00'),
(990, 2520, 8520, 'Maybe it was done by the automation process.', '2022-08-19 00:00:00');
-- select * from messages;

-- select
-- sent_date,
-- current_date(),
-- current_time(),
-- current_timestamp()
-- from messages;

-- select * from messages where sent_date ="2021-08-10";


-- select * from messages where sent_date="2022-08-10";

-- select extract(year from sent_date) ,
-- extract(month from sent_date),
-- extract(day from sent_date),
-- extract(hour from sent_date),
-- extract(minute from sent_date)
-- from messages;

-- select date_part('year',sent_date),
-- date_part('month',sent_date),
-- date_part('day',sent_date),
-- date_part('minute',sent_date),
-- date_part('hour',sent_date)
-- from messages;


-- 1. Create table
CREATE TABLE posts (
    user_id INT NOT NULL,
    post_id INT PRIMARY KEY,
    post_content VARCHAR(500),
    post_date DATETIME
);

-- 2. Insert values
INSERT INTO posts (user_id, post_id, post_content, post_date)
VALUES
(151652, 599415, 'Need a hug', '2021-07-10 12:00:00'),
(661093, 624356, 'Bed. Class 8-12. Work 12-3. Gym 3-5 or 6. Then class 6-10. Another day that''s gonna fly by. I miss my girlfriend', '2021-07-29 13:00:00'),
(4239,   784254, 'Happy 4th of July!', '2021-07-04 11:00:00'),
(661093, 442560, 'Just going to cry myself to sleep after watching Marley and Me.', '2021-07-08 14:00:00'),
(151652, 111766, 'I''m so done with covid - need travelling ASAP!', NULL);

-- select user_id,datediff(max(post_date),min(post_date)) from posts group by user_id;

select user_id,post_date + interval '4 days'as inc
from posts;

-- 1. Create the table
CREATE TABLE sales (
    employee_id INT NOT NULL,
    sales_date DATE NOT NULL,
    total_sales INT,
    PRIMARY KEY (employee_id, sales_date) -- composite key since each employee has 1 record per date
);

-- 2. Insert data
INSERT INTO sales (employee_id, sales_date, total_sales) VALUES
(101, '2024-01-01', 500),
(102, '2024-01-01', 700),
(103, '2024-01-01', 600),
(101, '2024-01-02', 800),
(102, '2024-01-02', 750),
(103, '2024-01-02', 900),
(101, '2024-01-03', 600),
(102, '2024-01-03', 850),
(103, '2024-01-03', 700);
with temp as(select employee_id,sum(total_sales)total_sales 
from sales group by employee_id)
select employee_id,total_sales,dense_rank() over(order by total_sales desc)sales_rank
from temp;

-- 1. Create table
CREATE TABLE trips (
    trip_id INT,
    rider_id INT,
    driver_id INT,
    trip_timestamp DATE
);

-- 2. Insert data
INSERT INTO trips (trip_id, rider_id, driver_id, trip_timestamp) VALUES
(1, 1, 2, '2022-02-01'),
(1, 2, 2, '2022-03-11'),
(1, 1, 2, '2022-04-01'),
(1, 1, 2, '2022-05-21'),
(1, 2, 2, '2022-06-01'),
(1, 3, 2, '2022-07-31');
select rider_id ,
 max(date_format(trip_timestamp,'%Y-%m-%d %H:%i:%s'))
 from trips group by rider_id;
 
 -- 1. Create the table
CREATE TABLE transactions (
    id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    transaction_time DATETIME,
    transaction_amount INT
);

-- 2. Insert sample data
INSERT INTO transactions (id, customer_name, transaction_time, transaction_amount) VALUES
(1, 'A', '2022-02-21 15:21:10', 533),
(2, 'B', '2022-02-21 15:21:20', 234),
(3, 'D', '2022-02-21 15:21:25', 789),
(4, 'D', '2022-02-21 15:21:45', 34),
(5, 'F', '2022-02-21 15:21:40', 12),
(6, 'A', '2022-02-21 15:22:05', 445),
(7, 'B', '2022-02-21 15:22:15', 236),
(8, 'C', '2022-02-21 15:22:30', 643),
(9, 'F', '2022-02-21 15:22:40', 563);
with cte as(
select id,customer_name,
transaction_time,
lag(customer_name,1) over(order by transaction_time)as previous_cust,
lag(transaction_time,1) over(order by transaction_time)
as previous_time 
from transactions)
select customer_name,previous_cust
from cte
where timestampdiff("Second",transaction_time,previous_time)=10;

with cte as(
 select id,customer_name,
 transaction_time,
 lag(customer_name,1)  over(order by transaction_time)as previous_cust,
 lag(transaction_time,1) over(order by transaction_time)
 as previous_time 
 from transactions)
 select customer_name as res ,previous_cust as res
 from cte
 where timestampdiff(Second,previous_time,transaction_time)=10;
 
 
 
select distinct t1.customer_name from 
transactions t1 join transactions t2 
on t1.id!=t2.id
and abs(timestampdiff(Second,t1.transaction_time,t2.transaction_time))=10;


-- Create table
CREATE TABLE postsLike (
    id INT PRIMARY KEY,
    user_id INT NOT NULL,
    date_posted DATETIME NOT NULL
);

-- Insert data
INSERT INTO postsLike (id, user_id, date_posted) VALUES
(1, 12342, '2021-01-02 08:00:00'),
(2, 12342, '2021-02-06 07:30:00'),
(3, 12341, '2021-05-23 22:15:00'),
(4, 12343, '2021-04-12 21:30:00'),
(5, 12344, '2021-07-30 10:25:00');
-- Create table
CREATE TABLE likes (
    id INT,
    user_id INT
);

-- Insert data
INSERT INTO likes (id, user_id) VALUES
(1, 12340),
(5, 12341),
(2, 12342),
(3, 12343),
(3, 12344),
(4, 12345),
(1, 12346);
select temp.id,temp.num_likes from postslike as p
join
(
select id,count(user_id)num_likes ,
rank() over(order by count(user_id) desc)rnk
from likes 
group by id)temp 
on temp.id = p.id
and p.date_posted like "2021%"
and temp.rnk=3
;

-- DEV SIR QUES
create table orders_dev(
id int,
created_at date,
order_status varchar(20),
current_state varchar(20));

insert into orders_dev ()values
(1,"2025-08-28","progress",NULL),
(2,"2025-08-28","inprogress",NULL),
(3,"2025-08-31","progress",NULL),
(4,"2025-08-20","progress",NULL);


with cte as (
select *,
dayname(created_at) as created_day,
timestampdiff(day,created_at,curdate()) +1 as total_days,
timestampdiff(week,created_At,curdate()) * 2 as total_weekenddays,
(timestampdiff(day,created_at,curdate()) +1 
- (timestampdiff(week,created_At,curdate()) * 2 )
- (
case when dayname(created_at)='Sunday' or dayname(created_At)='Saturday' then 1 
when dayname(curdate())='Sunday' or dayname(curdate())='Saturday' then 1 
else 0
end
)
) as workdays
from orders_dev)
update orders_dev as o
join cte 
set o.current_state = 
(case
  when cte.workdays>3 and o.order_Status='inprogress' then 'delayed'
  when cte.workdays>3 and o.order_Status='completed' then 'On-time'
  when cte.workdays<=3  then 'On-time'
  else 'delayed'
  end
)
where o.current_state is NULL;
select * from orders_dev;






-- Converting row to column 
-- Step 1: Create the table
CREATE TABLE student_marks (
    name VARCHAR(50),
    college VARCHAR(50),
    roll_number VARCHAR(20),
    subject VARCHAR(50),
    marks INT
);

-- Step 2: Insert the given records
INSERT INTO student_marks (name, college, roll_number, subject, marks) VALUES
('ROMY', 'BVP', '0261150', 'DBMS', 90),
('ROMY', 'BVP', '0261150', 'NETWORKING', 87),
('ROMY', 'BVP', '0261150', 'GRAPHICS', 95),
('PUSHKAR', 'MSIT', '0898888', 'DBMS', 91),
('PUSHKAR', 'MSIT', '0898888', 'NETWORKING', 90),
('PUSHKAR', 'MSIT', '0898888', 'GRAPHICS', 78);
select temp.name,
max(temp.NETWORKING),
max(temp.Graphics),
max(temp.dbms)from
(
select name,college,roll_number,
case when subject='NETWORKING' then marks
end as NETWORKING,
case when subject='DBMS' then marks
end as DBMS,
case when subject='GRAPHICS' then marks
end as GRAPHICS
from student_marks)temp group by temp.name;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);
INSERT INTO Employees (employee_id, employee_name, manager_id) VALUES
(1,  'Boss',    1),
(3,  'Alice',   3),
(2,  'Bob',     1),
(4,  'Daniel',  2),
(7,  'Luis',    4),
(8,  'Jhon',    3),
(9,  'Angela',  8),
(77, 'Robert',  1);
with recursive temp as(
select employee_id,employee_name , 1 as level  from employees where employee_name='BOSS'
union 
select e.employee_id,e.employee_name,temp.level+1 from  employees e join 
temp on e.manager_id = temp.employee_id and e.manager_id != e.employee_id
)select * from temp;



-- Drop table if exists
DROP TABLE IF EXISTS transactions;

-- Create table
CREATE TABLE transactions1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    trans_date DATE
);

-- Insert sample data
INSERT INTO transactions1 (user_id, trans_date) VALUES
-- User 1 (Gap: missing 2025-01-03, 2025-01-06)
(1, '2025-01-01'),
(11, '2025-01-02'),
(12, '2025-01-04'),
(13, '2025-01-05'),
(14, '2025-01-07');

select user_id,
lag(trans_date) over(order by trans_date)today,
trans_date - lag(trans_date) over(order by trans_date) as gap
from transactions1 ;

create table DATESFUN(
orderdate date,
shippeddate date)
;
insert into DATESFUN (orderdate,shippeddate) values
("2025-08-04","2025-08-12"),
("2025-08-05","2025-08-15"),
("2025-08-17","2025-08-20"),
("2025-08-16","2025-08-21"),
("2025-08-22","2025-08-31");

select orderdate,shippeddate,
timestampdiff(day,orderdate,shippeddate)+1 as daysdif,
timestampdiff(week,orderdate,shippeddate)as weekdiff,
dayname(orderdate)as orderday,
(
timestampdiff(day,orderdate,shippeddate)+1
-  timestampdiff(week,orderdate,shippeddate) *2
-( 
case 
when  dayname(orderdate)='Sunday' or dayname(orderdate)='Saturday'  then 1 
when  dayname(shippeddate)='Sunday' or dayname(shippeddate)='Saturday'  then 1 
else 0 
end 
) )as weekdays
,
dayname(shippeddate)as shipedday
from datesfun;



create database youtube;
use youtube;


-- query 1
create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');

with cte as(
select team_1 as team_name , 
case
when team_1=winner then 1
else 0
end
as wining_count
from icc_world_cup
union all
select team_2 as team_name , 
case
when team_2=winner then 1
else 0
end
as wining_count 
from icc_world_cup
 )
 select team_name,
 count(1) as matches_played,
 sum(wining_count)as no_of_wins,
 count(1)- sum(wining_count) as no_of_looses
 from cte group by team_name;


-- query 2
-- Daily how many new customers are coming and how many are old one?

create table customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);

insert into customer_orders values
(1,100,cast('2022-01-01' as date),2000)
,(2,200,cast('2022-01-01' as date),2500)
,(3,300,cast('2022-01-01' as date),2100)
,(4,100,cast('2022-01-02' as date),2000),
(5,400,cast('2022-01-02' as date),2200),
(6,500,cast('2022-01-02' as date),2700)
,(7,100,cast('2022-01-03' as date),3000),
(8,400,cast('2022-01-03' as date),1000),
(9,600,cast('2022-01-03' as date),3000);

with cte as(
select customer_id , min(order_date)as first_login from customer_orders group by customer_id
),
cte2 as (select
co.*,cte.first_login,
case
when co.order_date=cte.first_login then 1 else 0
end as new_user,
case when co.order_date!=cte.first_login then 1 else 0
end as old_user
from customer_orders co
join cte 
on co.customer_id=cte.customer_id
)

select order_date,sum(new_user),sum(old_user) from cte2 group by order_date;

-- query 3
create table entries ( 
name varchar(20),
address varchar(20),
email varchar(20),
floor int,
resources varchar(10));

insert into entries 
values ('A','Bangalore','A@gmail.com',1,'CPU'),
('A','Bangalore','A1@gmail.com',1,'CPU'),
('A','Bangalore','A2@gmail.com',2,'DESKTOP')
,('B','Bangalore','B@gmail.com',2,'DESKTOP'),
('B','Bangalore','B1@gmail.com',2,'DESKTOP'),
('B','Bangalore','B2@gmail.com',1,'MONITOR');

select name,count(1) as total_number_of_visits,max(floor),group_concat( distinct resources)as resources_used
from entries group by name;

-- query Amazon
-- write a query to provide date for nth occurence of sunday in future from given date;
-- let say today is 2025-09-06 -- saturday 

-- WITH RECURSIVE nsunday AS (
--     SELECT 
--         case 
-- when dayname("2025-09-06")='Sunday' then date_add("2025-09-06",interval 7 day)
-- when dayname("2025-09-06")='Monday' then date_add("2025-09-06",interval 6 day)
-- when dayname("2025-09-06")='Tuesday' then date_add("2025-09-06",interval 5 day)
-- when dayname("2025-09-06")='Wednesday' then date_add("2025-09-06",interval 4 day)
-- when dayname("2025-09-06")='Thursday' then date_add("2025-09-06",interval 3 day)
-- when dayname("2025-09-06")='Friday' then date_add("2025-09-06",interval 2 day)
-- when dayname("2025-09-06")='Saturday' then date_add("2025-09-06",interval 1 day)
-- end as sunday_date,

--         1 AS n
--     UNION ALL
--     -- recursive: add 7 days repeatedly
--     SELECT 
--         DATE_ADD(sunday_date, INTERVAL 7 DAY) AS sunday_date,
--         n + 1 AS n
--     FROM nsunday
--     WHERE n < 10  -- next 10 Sundays
-- )

-- or
with recursive nsunday as(
select date_add("2025-09-07",interval 7-dayofweek("2025-09-07") day) as sunday ,
 1 as n
 union 
 select date_add(sunday , interval 7 day)as sunday , n+1 as n
 from nsunday   where n< 5
)
SELECT * 
FROM nsunday;

use youtube;



-- query 4

-- how we can find out top 20 % products which gives 80% of the sales.
-- This is also known as pareto principle. We will implement it in SQL. 

DESCRIBE superstore_orders;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Superstore_orders.csv'
INTO TABLE superstore_orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Row_ID, Order_ID, Order_Date, Ship_Date, Ship_Mode, Customer_ID, Customer_Name, Segment, `Country/Region`, City, State, @Postal_Code, Region, Product_ID, Category, Sub_Category, Product_Name, Sales, Quantity, Discount, Profit)
SET Postal_Code = NULLIF(@Postal_Code, '');


ALTER TABLE superstore_orders MODIFY Postal_Code VARCHAR(20);


UPDATE superstore_orders 
SET Postal_Code = NULL 
WHERE Postal_Code = '';
ALTER TABLE superstore_orders MODIFY Postal_Code INT;


with cte as(
select product_id, sum(sales)as total_sales_per_Category from superstore_orders
group by product_id
),
cte2 as(
select product_id,total_sales_per_category,sum(total_sales_per_category)
over(order by total_sales_per_category desc)
as total_sales ,
sum(total_sales_per_category) over() *0.8 as grand_total ,
row_number() over(order by total_sales_per_category desc)as rnk,
count(1)  over() *0.2 as total_products_count
from cte )
select * from cte2
where total_sales <=grand_total 
and rnk<= total_products_count;


-- query 6
Create table friend (pid int, fid int);
insert into friend (pid , fid ) values ('1','2');
insert into friend (pid , fid ) values ('1','3');
insert into friend (pid , fid ) values ('2','1');
insert into friend (pid , fid ) values ('2','3');
insert into friend (pid , fid ) values ('3','5');
insert into friend (pid , fid ) values ('4','2');
insert into friend (pid , fid ) values ('4','3');
insert into friend (pid , fid ) values ('4','5');

create table person (PersonID int,	Name varchar(50),	Score int);
insert into person(PersonID,Name ,Score) values('1','Alice','88');
insert into person(PersonID,Name ,Score) values('2','Bob','11');
insert into person(PersonID,Name ,Score) values('3','Devis','27');
insert into person(PersonID,Name ,Score) values('4','Tara','45');
insert into person(PersonID,Name ,Score) values('5','John','63');
select * from person;
-- select * from friend
-- find whose friend got more than 100 marks
select pid,name,sum(score)frndScore from person p join friend f
on f.fid=p.personId group by pid having frndScore>100;

-- query 7

Create table  Trips (id int, client_id int, driver_id int, city_id int, status varchar(50), request_at varchar(50));
Create table Users (users_id int, banned varchar(50), role varchar(50));
Truncate table Trips;
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('1', '1', '10', '1', 'completed', '2013-10-01');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('2', '2', '11', '1', 'cancelled_by_driver', '2013-10-01');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('3', '3', '12', '6', 'completed', '2013-10-01');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('4', '4', '13', '6', 'cancelled_by_client', '2013-10-01');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('5', '1', '10', '1', 'completed', '2013-10-02');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('6', '2', '11', '6', 'completed', '2013-10-02');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('7', '3', '12', '6', 'completed', '2013-10-02');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('8', '2', '12', '12', 'completed', '2013-10-03');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('9', '3', '10', '12', 'completed', '2013-10-03');
insert into Trips (id, client_id, driver_id, city_id, status, request_at) values ('10', '4', '13', '12', 'cancelled_by_driver', '2013-10-03');
Truncate table Users;
insert into Users (users_id, banned, role) values ('1', 'No', 'client');
insert into Users (users_id, banned, role) values ('2', 'Yes', 'client');
insert into Users (users_id, banned, role) values ('3', 'No', 'client');
insert into Users (users_id, banned, role) values ('4', 'No', 'client');
insert into Users (users_id, banned, role) values ('10', 'No', 'driver');
insert into Users (users_id, banned, role) values ('11', 'No', 'driver');
insert into Users (users_id, banned, role) values ('12', 'No', 'driver');
insert into Users (users_id, banned, role) values ('13', 'No', 'driver');

-- write a query to find cancallation rate of trips 
-- with unbaned users btw 1 to 3 to oct 2013
use youtube;
select * from trips;
with cte as(
select t.client_id,t.driver_id,t.status,u1.banned as client_status,u2.banned as driver_status,t.request_at
from trips t
join users u1 
on t.client_id = u1.users_id 
join users u2
on t.driver_id = u2.users_id 
)
,cte2 as(select request_at,
sum(
case
when status!='completed' and client_status='no' and driver_status='no'then 1 else 0
end 
)cancelled_request_by_unbanned ,
sum(
case 
when client_status='no' and driver_status='no' then 1 else 0
end
) as total_unbanned_request
 from 
cte group by request_at)
select request_at,round((cancelled_request_by_unbanned/total_unbanned_request),2) from cte2;

-- or 

WITH valid_trips AS (
    SELECT 
        t.request_at,
        t.status,
        u1.banned AS client_status,
        u2.banned AS driver_status
    FROM Trips t
    JOIN Users u1 ON t.client_id = u1.users_id
    JOIN Users u2 ON t.driver_id = u2.users_id
    WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
)
SELECT 
    request_at,
    ROUND(
        SUM(CASE 
                WHEN status IN ('cancelled_by_driver','cancelled_by_client') 
                     AND client_status = 'No' 
                     AND driver_status = 'No' 
                THEN 1 ELSE 0 END
        ) * 1.0 /
        SUM(CASE 
                WHEN client_status = 'No' AND driver_status = 'No' 
                THEN 1 ELSE 0 END),
        2
    ) AS cancellation_rate
FROM valid_trips
GROUP BY request_at
ORDER BY request_at;


-- query 8

create table players
(player_id int,
group_id int);

insert into players values (15,1);
insert into players values (25,1);
insert into players values (30,1);
insert into players values (45,1);
insert into players values (10,2);
insert into players values (35,2);
insert into players values (50,2);
insert into players values (20,3);
insert into players values (40,3);

create table matches
(
match_id int,
first_player int,
second_player int,
first_score int,
second_score int);

insert into matches values (1,15,45,3,0);
insert into matches values (2,30,25,1,2);
insert into matches values (3,30,15,2,0);
insert into matches values (4,40,20,5,2);
insert into matches values (5,35,50,1,1);

-- which player won in each group
with cte as(
select first_player as player,first_score as score ,group_id from matches
join players p on p.player_id=first_player
union 
select second_player as player , second_score as score,group_id from matches join players p on p.player_id=second_player
)
,cte2 as(select group_id,player,sum(score) as score
from cte  group by player),
cte3 as (
select player , row_number() over(partition by group_id order by score desc, player ) rnk from  cte2)
select * from cte3 where rnk=1 ;

