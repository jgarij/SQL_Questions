create database assignment2;
use assignment2;
-- Create the World table

-- query 51
CREATE TABLE World (
    name VARCHAR(50),
    continent VARCHAR(20),
    area INT,
    population INT,
    gdp BIGINT
);

-- Insert data into World table
INSERT INTO World (name, continent, area, population, gdp) VALUES
('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
('Albania', 'Europe', 28748, 2831741, 12960000000),
('Algeria', 'Africa', 2381741, 37100000, 188681000000),
('Andorra', 'Europe', 468, 78115, 3712000000),
('Angola', 'Africa', 1246700, 20609294, 100990000000);
-- Write an SQL query to report the name, population, and area of the big countries.
-- Return the result table in any order.

select name,area,population from world
where area>= 3000000 or population>=25000000;


-- query 52

-- Create the Customer table
CREATE TABLE Customer (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    referee_id INT
);

-- Insert data into Customer table
INSERT INTO Customer (id, name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);

-- Write an SQL query to report the names of the customer that are not referred by the customer with id
-- = 2 
select  name from customer where referee_id is NULL or referee_id!=2;

-- query53

-- Create Customers table
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES Customers(id)
);

-- Insert data into Customers table
INSERT INTO Customers (id, name) VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

-- Insert data into Orders table
INSERT INTO Orders (id, customerId) VALUES
(1, 3),
(2, 1);

-- Write an SQL query to report all customers who never order anything
select name as Customers from customers where id not in (select customerId from orders);

-- query 54
create table employee(
employee_id int,
team_id int);
insert into employee values
(1,8),
(2,8),
(3,8),
(4,7),
(5,9),
(6,9);
-- Write an SQL query to find the team size of each of the employees.

select employee_id,count(*) over(partition by team_id order by employee_id  )as team_size from employee  order by employee_id;

-- query 55













-- query 56
-- Create Activity table
CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);

-- Insert data into Activity table
INSERT INTO Activity (player_id, device_id, event_date, games_played) VALUES
(1, 2, '2016-03-01', 5),
(1, 2, '2016-05-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5);
-- Write an SQL query to report the device that is first logged in for each player.
select player_id,device_id from activity a where event_date in (
select min(event_date) from activity  where player_id= a.player_id);


-- query 57
-- Create Orders table
CREATE TABLE Orders_57 (
    order_number INT PRIMARY KEY,
    customer_number INT
);

-- Insert data into Orders table
INSERT INTO Orders_57 (order_number, customer_number) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3);
-- Write an SQL query to find the customer_number for the customer who has placed the largest
-- number of orders.

select customer_number   from orders_57 group by customer_number order by count(1) desc limit 1;


-- query 58
-- Create Cinema table
CREATE TABLE Cinema (
    seat_id INT PRIMARY KEY,
    free BOOLEAN
);

-- Insert data into Cinema table
INSERT INTO Cinema (seat_id, free) VALUES
(1, 1),
(2, 0),
(3, 1),
(4, 1),
(5, 1);
SELECT DISTINCT c1.seat_id
FROM cinema c1
JOIN cinema c2
  ON (c1.seat_id = c2.seat_id + 1 OR c1.seat_id = c2.seat_id - 1)
 AND c1.free = 1
 AND c2.free = 1
ORDER BY c1.seat_id;
-- or
(select c1.seat_id  from cinema c1
join cinema c2 on c1.seat_id +1 = c2.seat_id and c1.free=1 and c2.free=1)
union
(select c1.seat_id  from cinema c1
join cinema c2 on c1.seat_id -1 = c2.seat_id and c1.free=1 and c2.free=1);
 




-- query 59
-- Create SalesPerson table
CREATE TABLE SalesPerson (
    sales_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    commission_rate INT,
    hire_date DATE
);

-- Create Company table
CREATE TABLE Company (
    com_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    com_id INT,
    sales_id INT,
    amount INT,
    FOREIGN KEY (com_id) REFERENCES Company(com_id),
    FOREIGN KEY (sales_id) REFERENCES SalesPerson(sales_id)
);

-- Insert data into SalesPerson
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES
(1, 'John', 100000, 6, '2006-04-01'),
(2, 'Amy', 12000, 5, '2010-05-01'),
(3, 'Mark', 65000, 12, '2008-12-25'),
(4, 'Pam', 25000, 25, '2005-01-01'),
(5, 'Alex', 5000, 10, '2007-02-03');

-- Insert data into Company
INSERT INTO Company (com_id, name, city) VALUES
(1, 'RED', 'Boston'),
(2, 'ORANGE', 'New York'),
(3, 'YELLOW', 'Boston'),
(4, 'GREEN', 'Austin');
-- Insert data into Orders
INSERT INTO Orders (order_id, order_date, com_id, sales_id, amount) VALUES
(1, '2014-01-01', 3, 4, 10000),
(2, '2014-02-01', 4, 5, 5000),
(3, '2014-03-01', 1, 1, 50000),
(4, '2014-04-01', 1, 4, 25000);
-- Write an SQL query to report the names of all the salespersons who did not have any orders related to
-- the company with the name "RED".
select name  from salesperson where sales_id not in (
select sales_id from orders where com_id =(select com_id from company where name='RED'));

-- query 60
CREATE TABLE Triangle (
    x INT,
    y INT,
    z INT,
    PRIMARY KEY (x, y, z)
);
INSERT INTO Triangle (x, y, z) VALUES
(13, 15, 30),   
(10, 20, 15); 

select * , 
case
when (x+y>z) and (y+z)>x and (x+z)>y then 'yes'
else 'no'
end as triangle
from triangle;

-- query 61
create table point (x int);
insert into point (x) values(-1),(0),(2);

select (x-temp.previous)shortest from (
select *,lag(x) over(order by x)as previous  from point)temp
order by shortest limit 1 offset 1 ;

-- for optimised
select min(x-temp.previous)shortest from (
select *,lag(x) over()as previous  from point)temp
where temp.previous is not NULL;


-- query 62
CREATE TABLE ActorDirector (
    actor_id INT,
    director_id INT,
    timestamp INT
);
INSERT INTO ActorDirector (actor_id, director_id, timestamp) VALUES
(1, 1, 0),
(1, 1, 1),
(1, 1, 2),
(2, 3, 1),
(1, 2, 2),
(2, 2, 3);
--  Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has
--  cooperated with the director at least three times
select 
actor_id, director_id
from ActorDirector
group by actor_id, director_id
having count(1)>=3;

-- query 63
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(30)
);


CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    year INT,
    quantity INT,
    price INT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

INSERT INTO Product (product_id, product_name) VALUES
(100, 'Nokia'),
(200, 'Apple'),
(300, 'Samsung');
INSERT INTO Sales (sale_id, product_id, year, quantity, price) VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);

-- Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.

select  p.product_name,
s.year,s.price 
from sales s join product p 
on s.product_id=p.product_id;

-- query 64
-- Create Employee table
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    experience_years INT
);

-- Create Project table
CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    primary key (project_id,employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);


-- Insert data into Employee table
INSERT INTO Employee (employee_id, name, experience_years) VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);

-- Insert data into Project table
INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);


select p.project_id , round(avg(e.experience_years),2)
from employee e join project p on e.employee_id=p.employee_id 
group by p.project_id;


-- query 65
-- Create Sales table
CREATE TABLE Sales (
    seller_id INT,
    product_id INT,
    buyer_id INT,
    sale_date DATE,
    quantity INT,
    price INT
);

-- Insert sample data
INSERT INTO Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) VALUES
(1, 1, 1, '2019-01-21', 2, 2000),  
(1, 2, 2, '2019-02-17', 1, 800),  
(2, 3, 3, '2019-06-02', 1, 800),   
(3, 4, 4, '2019-05-13', 2, 2800); 
select seller_id  from sales  group by seller_id having sum(price) =
(select sum(price)total from sales group by seller_id order by total desc limit 1);

-- query 66

-- Create Product table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    unit_price INT
);

-- Insert sample data
INSERT INTO Product (product_id, product_name, unit_price) VALUES
(1, 'S8', 1000),
(2, 'G4', 800),
(3, 'iPhone', 1400);




select buyer_id from sales 
where product_id = (select product_id from product where product_name='S8')
IN
(select buyer_id from sales where product_id != (select product_id from product where product_name='iphone'));


-- query 67
CREATE TABLE Customer (
    customer_id INT,
    name VARCHAR(50),
    visited_on DATE,
    amount INT
);
INSERT INTO Customer (customer_id, name, visited_on, amount) VALUES
(1, 'Jhon',    '2019-01-01', 100),
(2, 'Daniel',  '2019-01-02', 110),
(3, 'Jade',    '2019-01-03', 120),
(4, 'Khaled',  '2019-01-04', 130),
(5, 'Winston', '2019-01-05', 110),
(6, 'Elvis',   '2019-01-06', 140),
(7, 'Anna',    '2019-01-07', 150),
(8, 'Maria',   '2019-01-08',  80),
(9, 'Jaze',    '2019-01-09', 110),
(1,'Jhon',    '2019-01-10', 130),
(13,'Jade',    '2019-01-10', 150);

-- Write an SQL query to compute the moving average of how much the customer paid in a seven days
--  window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.

With temp as 
(select visited_on ,sum(amount)amount from customer group by visited_on)
select cust.visited_on,cust.amount,cust.average from
(select visited_on ,
round(sum(amount) over (order by visited_on range between interval '6' day preceding and current row ),2) amount,
round(avg(amount) over(order by visited_on range between interval '6' day preceding and current row ),2)average
from temp)cust where cust.visited_on >=(select min(visited_on) from customer) + Interval '6' day;

use assignment2;
-- query 68
CREATE TABLE Scores (
    player_name VARCHAR(50),
    gender CHAR(1),
    day DATE,
    score_points INT
);

INSERT INTO Scores (player_name, gender, day, score_points) VALUES
('Aron', 'F', '2020-01-01', 17),
('Alice', 'F', '2020-01-07', 23),
('Bajrang', 'M', '2020-01-07', 7),
('Khali', 'M', '2019-12-25', 11),
('Jose', 'M', '2019-12-30', 13),
('Priya', 'M', '2019-12-31', 3),
('Jose', 'M', '2019-12-18', 2),
('Priya', 'F', '2019-12-31', 23),
('Priyanka', 'F', '2019-12-30', 17);
 -- Write an SQL query to find the total score for each gender on each day
select day,gender,sum(score_points)
 over(partition by gender order by gender,
 day rows  between unbounded preceding and current row)total
 from Scores order by gender ,day ;
 
 select *,sum(score_points) over(partition by gender order  by day),
 max(score_points) over(partition by gender order  by day),
min(score_points) over(partition by gender order  by day)
 from scores;
 
-- query 69
create table logs(log_id int);
insert into logs (log_id) values(1),(2),(3),(7),(8),(10);

-- query 70
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE Subjects (
    subject_name VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Examinations (
    student_id INT,
    subject_name VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_name) REFERENCES Subjects(subject_name)
);
INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');
INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Programming');
INSERT INTO Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');
-- Write an SQL query to find the number of times each student attended each exam.
with temp as (select  student_id,
subject_name ,
count(student_id)attended_exams from examinations  group by student_id,subject_name)

select s.student_id ,s.student_name , sub.subject_name ,temp.attended_exams from  students s  cross join 
subjects sub
left join 
temp on temp.student_id=s.student_id;
;




select s.student_id ,s.student_name , sub.subject_name,coalesce(temp.attended_exams,0) from
students  s  cross join 
subjects sub 
left join
(select student_id,
subject_name ,
count(student_id)attended_exams from examinations  group by student_id,subject_name )temp
on s.student_id=temp.student_id and sub.subject_name=temp.subject_name order by s.student_id,student_name;

-- query 71
-- Create Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

-- Insert data
INSERT INTO Employees (employee_id, employee_name, manager_id) VALUES
(1,  'Boss',    1),
(3,  'Alice',   3),
(2,  'Bob',     1),
(4,  'Daniel',  2),
(7,  'Luis',    4),
(8,  'Jhon',    3),
(9,  'Angela',  8),
(77, 'Robert',  1);
with recursive hirerarchy as(
select employee_id,employee_name from employees 
where employee_name='BOSS'
union all 
select e.employee_id,e.employee_name from employees e  join hirerarchy h 
on e.manager_id = h.employee_id and e.employee_id!=h.employee_id
)
select employee_id from hirerarchy  where employee_name!='BOSS' ;

-- query 72

-- Create Transactions table
CREATE TABLE Transactions (
    id INT PRIMARY KEY,
    country VARCHAR(10),
    state VARCHAR(20),
    amount INT,
    trans_date DATE
);

-- Insert data
INSERT INTO Transactions (id, country, state, amount, trans_date) VALUES
(121, 'US', 'approved', 1000, '2018-12-18'),
(122, 'US', 'declined', 2000, '2018-12-19'),
(123, 'US', 'approved', 2000, '2019-01-01'),
(124, 'DE', 'approved', 2000, '2019-01-07');

select 
date_format(trans_date,'%Y-%m')as month,
country,
count(*) trans_count,
sum(amount)trans_total_amount,
sum(
case
 when state='approved' then 1
 else 0
 end 
 )approved_count,
sum(
case when state='approved' then amount
else 0
end
) approved_total_amt

from transactions group by country, month;

-- query 73
-- Create the Actions table
CREATE TABLE Actions (
    user_id INT,
    post_id INT,
    action_date DATE,
    action VARCHAR(20),
    extra VARCHAR(50)
);

-- Insert data into Actions table
INSERT INTO Actions (user_id, post_id, action_date, action, extra) VALUES
(1, 1, '2019-07-01', 'view', NULL),
(1, 1, '2019-07-01', 'like', NULL),
(1, 1, '2019-07-01', 'share', NULL),
(2, 2, '2019-07-04', 'view', NULL),
(2, 2, '2019-07-04', 'report', 'spam'),
(3, 4, '2019-07-04', 'view', NULL),
(3, 4, '2019-07-04', 'report', 'spam'),
(4, 3, '2019-07-02', 'view', NULL),
(4, 3, '2019-07-02', 'report', 'spam'),
(5, 2, '2019-07-03', 'view', NULL),
(5, 2, '2019-07-03', 'report', 'NULL'),
(5, 5, '2019-07-03', 'view', NULL),
(5, 5, '2019-07-03', 'report', 'racism');
drop table actions;
create table removals (
id int,
remove_date date);
insert into removals ()values(2,"2019-07-20"),
(3,"2029-07-18");
drop table removals;
with cte as(
select t1.action_date,(
count(1)*100/
(select count(1) from actions where extra='spam' and action_date=t1.action_date)) as total_per_day
from actions t1 join removals t2
on t1.post_id = t2.id
and t1.extra='spam'
and t1.action_date<=t2.remove_date
group by action_date
)
select round(sum(total_per_day)/count(1),2)as average_daily_percentage from cte;


-- or
-- optimize one
with cte as(
select t1.action_date ,t1.extra,t1.post_id,t2.remove_date
,count(distinct t1.post_id) as total_spam ,
 sum(
 case
 when t2.remove_date is not null and t1.action_date<=t2.remove_date then 1
 else 0
 end)removed_spam
 from actions t1
 left join removals t2
 on t1.post_id=t2.id
 where t1.extra='spam'
 group by t1.action_date
 )
 select round(avg(removed_spam/total_spam)*100,2) as daily_percentage from cte;
 

 -- query 74
 -- Create Activity table
CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);

-- Insert data
INSERT INTO Activity (player_id, device_id, event_date, games_played) VALUES
(1, 2, '2016-03-01', 5),
(1, 2, '2016-03-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5);
with cte as(
select player_id,min(event_date)first_login from activity   group by player_id
)
select count(cte.player_id)/(select count(*)from cte)fraction  from 
cte
join activity a2
on cte.player_id=a2.player_id and 
date_add(cte.first_login,interval 1 day)=a2.event_date;

-- query 76
-- Create Salaries table
CREATE TABLE Salaries (
    company_id INT,
    employee_id INT,
    employee_name VARCHAR(50),
    salary INT
);

-- Insert data
INSERT INTO Salaries (company_id, employee_id, employee_name, salary) VALUES
(1, 1, 'Tony', 2000),
(1, 2, 'Pronub', 21300),
(1, 3, 'Tyrrox', 10800),
(2, 1, 'Pam', 300),
(2, 2, 'Bassem', 450),
(2, 3, 'Hermione', 700),
(3, 1, 'Bocaben', 100),
(3, 2, 'Ognjen', 2200),
(3, 3, 'Nyan Cat', 3300),
(3, 7, 'Morning Cat', 7777);

with cte as(
select company_id,max(salary)max_sal from salaries group by company_id
)
select s.company_id,s.employee_id,s.employee_name,
case
when cte.max_sal > 10000 then round(salary-(salary*0.49))
when cte.max_sal>1000 and cte.max_sal<10000 then round(salary - (salary* 0.24))
else salary
end
salary
from salaries s 
join cte 
on cte.company_id=s.company_id;

-- query 77
-- Create Variables table
CREATE TABLE Variables (
    name VARCHAR(10) PRIMARY KEY,
    value INT
);
-- Insert data into Variables
INSERT INTO Variables (name, value) VALUES
('x', 66),
('y', 77);
-- Create Expressions table
CREATE TABLE Expressions (
    left_operand VARCHAR(10),
    operator VARCHAR(5),
    right_operand VARCHAR(10)
);
-- Insert data into Expressions
INSERT INTO Expressions (left_operand, operator, right_operand) VALUES
('x', '>', 'y'),
('x', '<', 'y'),
('x', '=', 'y'),
('y', '>', 'x'),
('y', '<', 'x'),
('x', '=', 'x');
 -- Write an SQL query to evaluate the boolean expressions in Expressions table.
with cte as(
select *, 
case 
when left_operand='x' then (select value from variables where name='x')
when left_operand='y' then (select value from variables where name='y')
end as left_operand_val,
case 
when right_operand='x' then (select value from variables where name='x')
when right_operand='y' then (select value from variables where name='y')
end as right_operand_val
from expressions)
select left_operand,right_operand,operator,
case 
when operator='=' and  left_operand_val=right_operand_val then 'true'
when operator='>'and left_operand_val>right_operand_val then 'true'
when operator='<' and  left_operand_val<right_operand_val then 'true'
else 'false'
end as value
from cte;

-- query 78
-- Person Table
CREATE TABLE Person (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    phone_number VARCHAR(20)
);

INSERT INTO Person (id, name, phone_number) VALUES
(3, 'Jonathan', '051-1234567'),
(12, 'Elvis', '051-7654321'),
(1, 'Moncef', '212-1234567'),
(2, 'Maroua', '212-6523651'),
(7, 'Meir', '972-1234567'),
(9, 'Rachel', '972-0011100');


-- Country Table
CREATE TABLE Country (
    name VARCHAR(50),
    country_code VARCHAR(10)
);

INSERT INTO Country (name, country_code) VALUES
('Peru', '51'),
('Israel', '972'),
('Morocco', '212'),
('Germany', '49'),
('Ethiopia', '251');


-- Calls Table
CREATE TABLE Calls (
    caller_id INT,
    callee_id INT,
    duration INT
);

INSERT INTO Calls (caller_id, callee_id, duration) VALUES
(1, 9, 33),
(2, 9, 4),
(1, 2, 59),
(3, 12, 102),
(3, 12, 330),
(12, 3, 5),
(7, 9, 13);



-- query 80

-- Create user_transactions table
CREATE TABLE user_transactions (
    transaction_id INT PRIMARY KEY,
    product_id INT,
    spend DECIMAL(10,2),
    transaction_date DATETIME
);

-- Insert data into user_transactions
INSERT INTO user_transactions (transaction_id, product_id, spend, transaction_date) VALUES
(1341, 123424, 1500.60, '2019-12-31 12:00:00'),
(1423, 123424, 1000.20, '2020-12-31 12:00:00'),
(1623, 123424, 1246.44, '2021-12-31 12:00:00'),
(1322, 123424, 2145.32, '2022-12-31 12:00:00');

select extract(year from transaction_date)year,
product_id,
spend as curr_year_spend,
lag(spend) over(order by transaction_date)prev_year_spend,
round((
(spend- lag(spend) over(order by transaction_date))*100/lag(spend) over(order by transaction_date)
),2)as yoy_rate
from user_transactions;

-- query 81
-- Create inventory table
CREATE TABLE inventory (
    item_id INT PRIMARY KEY,
    item_type VARCHAR(20),
    item_category VARCHAR(50),
    square_footage DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO inventory (item_id, item_type, item_category, square_footage) VALUES
(1374, 'prime_eligible', 'mini refrigerator', 68.00),
(4245, 'not_prime', 'standing lamp', 26.40),
(2452, 'prime_eligible', 'television', 85.00),
(3255, 'not_prime', 'side table', 22.60),
(1672, 'prime_eligible', 'laptop', 8.50);

with cte as(
select item_type , sum(square_footage)total_sq,count(1)as total_items
from inventory group by item_type
)
select item_type ,
case 
when item_type = 'prime_eligible' then (50000/total_sq)*3
when item_type='not_prime' then (50000-50000/(select total_sq from cte where item_type='prime_eligible'))/total_sq
end as count_items 
from 
cte;


-- query 82
-- Create user_actions table
CREATE TABLE user_actions (
    user_id INT,
    event_id INT,
    event_type VARCHAR(20),
    event_date DATETIME
);
-- Insert data into user_actions
INSERT INTO user_actions (user_id, event_id, event_type, event_date) VALUES
(445, 7765, 'sign-in', '2022-05-31 12:00:00'),
(742, 6458, 'sign-in', '2022-06-03 12:00:00'),
(445, 3634, 'like',    '2022-06-05 12:00:00'),
(742, 1374, 'comment', '2022-05-05 12:00:00'),
(648, 3124, 'like',    '2022-06-18 12:00:00');
INSERT INTO user_actions (user_id, event_id, event_type, event_date) VALUES
(445, 7765, 'sign-in', '2022-07-31 12:00:00');

select month(u2.event_date)as month,count(u1.user_id)as monthly_active_user
from user_actions u1 
join user_actions u2
on u1.user_id=u2.user_id and month(u1.event_date)+1 =month(u2.event_date)
and   u2.event_date like "2022-07%"
group by month(u2.event_date);

-- query 83



-- query 84
use assignment2;
-- Advertiser Table
CREATE TABLE advertiser (
    user_id VARCHAR(50),
    status VARCHAR(20)
);

-- Insert data into advertiser
INSERT INTO advertiser (user_id, status) VALUES
('bing', 'NEW'),
('yahoo', 'NEW'),
('alibaba', 'EXISTING');


-- Daily_pay Table
CREATE TABLE daily_pay (
    user_id VARCHAR(50),
    paid DECIMAL(10,2)
);

-- Insert data into daily_pay
INSERT INTO daily_pay (user_id, paid) VALUES
('yahoo', 45.00),
('alibaba', 100.00),
('target', 13.00);
select  d.user_id,
case 
when d.paid is not null and a.status is null then 'new'
when d.paid is not null and a.status in ('new','existing','resurrect')  then 'existing'
when d.paid is not null and a.status ='CHURN'  then 'resurrect'
end as status
from advertiser a
right join daily_pay d
on a.user_id=d.user_id
union (
select a.user_id,
case 
when d.paid is null then 'churn'
when d.paid is not null and a.status ='churn' then 'rescurence'
when d.paid is not null and a.status in ('new','existing','rescurence') then 'existing'

end as status
from advertiser a
left join daily_pay d
on a.user_id=d.user_id
);


-- query  85
-- Create table
CREATE TABLE server_utilization (
    server_id INT,
    status_time TIMESTAMP,
    session_status VARCHAR(10)
);

-- Insert sample data
INSERT INTO server_utilization (server_id, status_time, session_status) VALUES
(1, '2022-08-02 10:00:00', 'start'),
(1, '2022-08-04 10:00:00', 'stop'),
(2, '2022-08-17 10:00:00', 'start'),
(2, '2022-08-24 10:00:00', 'stop');
INSERT INTO server_utilization (server_id, status_time, session_status) VALUES
(1, '2022-09-02 10:00:00', 'start'),
(1, '2022-09-04 10:00:00', 'stop');
with cte as(
select server_id,
session_status,status_time as end_time,
lag(status_time,1,0) over(partition by server_id order by status_time)previous_time,
timestampdiff(hour,
lag(status_time,1,0) over(partition by server_id order by status_time),
status_time) as total_hour_used
from server_utilization
)
select sum(total_hour_used)/24 as days from cte where session_status='stop';
 
drop table transactions;
-- query 86
CREATE TABLE transactions (
    transaction_id INT,
    merchant_id INT,
    credit_card_id INT,
    amount INT,
    transaction_timestamp TIMESTAMP
);
INSERT INTO transactions (transaction_id, merchant_id, credit_card_id, amount, transaction_timestamp) VALUES
(1, 101, 1, 100, '2022-09-25 12:00:00'),
(2, 101,  1, 100, '2022-09-25 12:08:00'),
(3, 101,  1, 100, '2022-09-25 12:28:00'),
(4, 102,  2, 300, '2022-09-25 12:00:00'),
(6, 102,  2, 400, '2022-09-25 14:00:00');
with cte as (
select * ,
lag(transaction_timestamp,1) over(partition by merchant_id,credit_card_id,amount order by transaction_timestamp)as pervious_time,
timestampdiff(minute,
lag(transaction_timestamp,1) over(partition by merchant_id,credit_card_id,amount order by transaction_timestamp),
transaction_timestamp
)as mindiff
from transactions
)select count(1) as payment_count from cte where mindiff<10;

-- query 87
