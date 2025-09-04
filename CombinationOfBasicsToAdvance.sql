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


