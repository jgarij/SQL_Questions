create database assignment;
use assignment;

-- Query 101
-- Create table
CREATE TABLE UserActivity (
    username VARCHAR(50),
    activity VARCHAR(50),
    startDate DATE,
    endDate DATE
);

-- Insert sample data
INSERT INTO UserActivity (username, activity, startDate, endDate)
VALUES 
('Alice', 'Travel',  '2020-02-12', '2020-02-20'),
('Alice', 'Dancing', '2020-02-21', '2020-02-23'),
('Alice', 'Travel',  '2020-02-24', '2020-02-28'),
('Bob',   'Travel',  '2020-02-11', '2020-02-18');
select temp.username,temp.activity,temp.startDate,temp.endDate from 
(select *,row_number() over(partition by username order by startDate)recent_activity , count(*) over(partition by username)as total_rows_of_user from userActivity)temp
where temp.recent_activity=2 or temp.total_rows_of_user=1;



-- Query 103
CREATE TABLE Student (
    ID int,
    Name text,
    Marks int
);
Insert into Student values
(1,'Ashley',81),
(2,'Samantha',75),
(4,'Julia',76),
(3,'Belvet',84);

select name from student where marks>75 order by right(name,3) ;



-- Query 104
create table employee(
employee_id int,
name text,
months int,
salary int);
insert into employee values
(12228,'Rose',15,1968),
(33645,'Angela',1,3343),
(45692,'Frank',17,1608),
(56118,'Patrik',7,1345),
(59725,'Lisa',11,2330),
(74197,'Kimberly',16,4372),
(78454,'Bonnie',8,1771),
(83655,'Michael',6,2017),
(98607,'Todd',5,3396),
(99989,'Joe',9,3573);
insert into employee values(1,'Garima',1,69952);
select name from employee where salary>2000 and months<10 order by employee_id;


-- Query 105
create table triangles(a int , b int , c int);
insert into triangles values(20,20,23),(20,20,20),(20,21,22),(13,14,30);

select 
case 
when a=b and b=c then 'equilateral'
when (a=b and b!=c) or (a=c and c!=a) or (b=c and b!=a) then 'isosceles'
when (a+b>c and b+c>a and a+c>b) then 'scalene'
else 'not a trianle' 
end as type
from triangles;


-- Query 106
create table employee_105(
employee_id int,
name text,
salary int);
insert into employee_105 values
(1,"Krishteen",1420),
(2,'Ashley',2006),
(3,'Julia',2210),
(4,'Maria',3000);


-- Query 107

with totalSalary as (
select *,(months*salary) as total_salary from employee
) , rankWithCount as(
select temp.total_salary , row_number() over(order by temp.total_salary desc)highest ,count(*) over( partition by temp.total_salary)salarycount from totalSalary temp
)select r.total_salary,r.salarycount from rankWithCount r where r.highest=1 ;

-- Query 108
create table occupation(
name text,
occupation text);
insert into occupation values
('Samantha','Doctor'),
('Julia','Actor'),
('Maria','Actor'),
('Meera','Singer'),
('Ashley','Professor'),
('Ketty','Professor'),
('Christeen','Professor'),
('Jane','Actor'),
('Jenny','Doctor'),
('Priya','Singer');
select concat(name,(left(occupation,1))) as Output from occupation order by name;


-- Query 110 
create table BST(
N int,P int);
insert into BST values
(1,2),(3,2),(6,8),(9,8),(2,5),(8,5),(5,NULL);




select N,
case
when P is NULL then 'root'
when N not in (select P from BST where P is not  NULL) then 'leaf'
else 'inner'
end as type 
from BST;

-- Query 111
create table company (company_code text,founder text);
create table lead_manager(lead_manager_code text,company_code text);
create table senior_manager(senior_manager_code text,lead_manager_code text,company_code text);
create table manager(manager_code text,senior_manager_code text,lead_manager_code text,company_code text);
create table employees_v1(employee_code text,manager_code text,senior_manager_code text,lead_manager_code text,company_code text);
insert into company values('C1','Monika'),('C2','Samantha');
insert into lead_manager values('LM1','C1'),('LM2','C2');
insert into senior_manager values('SM1','LM1','C1'),('SM2','LM1','C1'),('SM3','LM2','C2');
insert into manager values('M1','SM1','LM1','C1'),('M2','SM3','LM2','C2'),('M3','SM3','LM2','C2');
insert into manager values('M1','SM1','LM1','C1'),('M2','SM3','LM2','C2'),('M3','SM3','LM2','C2');
insert into employees_v1 values('E1','M1','SM1','LM1','C1'),
('E2','M1','SM1','LM1','C1'),
('E3','M2','SM3','LM2','C2'),
('E4','M3','SM3','LM2','C2');

select * from manager;

with LMCount as (
select company_code,count(*) over(partition by company_code) as leadcount from lead_manager),
SMCount as(
select 
company_code,count(*) over (partition by company_code) as seniormanagercount from senior_manager),
MCount as(
select 
company_code,count(*) over (partition by company_code) as managercount from manager)
,Ecount as(
select 
company_code,count(*) over (partition by company_code) as employeecount from employees_v1
)
select distinct c.company_code,c.founder,l.leadcount,s.seniormanagercount,m.managercount,e.employeecount from company c
 join LMCount l on c.company_code=l.company_code
 join SMCount s on c.company_code=s.company_code
 join MCount m on c.company_code=m.company_code
 join ECount e on c.company_code=e.company_code;

use assignment;
-- Query 116
create table t116(x int , y int);
insert into t116 values
(20 ,20),
(20,20),
(20,21),
(23,22),
(22,23),
(21,20);
select distinct  x,y from t116 where x<=y order by x;


-- Query 116
select name from employee order by name;


-- Query 119

CREATE TABLE user_transactions (
    transaction_id INT PRIMARY KEY,
    product_id INT,
    spend DECIMAL(10,2),
    transaction_date DATETIME
);


INSERT INTO user_transactions (transaction_id, product_id, spend, transaction_date) VALUES
(1341, 123424, 1500.60, '2019-12-31 12:00:00'),
(1423, 123424, 1000.20, '2020-12-31 12:00:00'),
(1623, 123424, 1246.44, '2021-12-31 12:00:00'),
(1322, 123424, 2145.32, '2022-12-31 12:00:00');

with temp as
(select year(transaction_date),product_id,spend as curr_year_spend , lag(spend,1,0) 
over(partition by product_id order by transaction_date)
 as prev_yr_spend 
from user_transactions) 
select temp.*,(temp.curr_year_spend-temp.prev_yr_spend)*100 /temp.prev_yr_spend as yoy_rate from temp;
use assignment;
-- Query 120
CREATE TABLE inventory (
    item_id INT PRIMARY KEY,
    item_type VARCHAR(50),
    item_category VARCHAR(100),
    square_footage DECIMAL(10,2)
);
INSERT INTO inventory (item_id, item_type, item_category, square_footage) VALUES
(1374, 'prime_eligible', 'mini refrigerator', 68.00),
(4245, 'not_prime', 'standing lamp', 26.40),
(2452, 'prime_eligible', 'television', 85.00),
(3255, 'not_prime', 'side table', 22.60),
(1672, 'prime_eligible', 'laptop', 8.50);
select item_type,sum(square_footage),count(*) from inventory group by item_type;

-- Query 121
CREATE TABLE user_actions (
    user_id INT,
    event_id INT,
    event_type VARCHAR(20),   -- can hold values like 'sign-in', 'like', 'comment'
    event_date DATETIME
);

INSERT INTO user_actions (user_id, event_id, event_type, event_date) VALUES
(445, 7765, 'sign-in', '2022-05-31 12:00:00'),
(742, 6458, 'sign-in', '2022-06-03 12:00:00'),
(445, 648,  'like',    '2022-06-05 12:00:00'),
(742, 3634, 'comment', '2022-06-05 12:00:00'),
(1374, 3124, 'like',   '2022-06-18 12:00:00');
select user_id , extract(month from event_date) from user_actions;
select temp.curr_month ,count(*) as monthly_active_users from (
select t1.user_id ,extract(month from event_date) as curr_month from user_actions t1 
join user_actions t2 on t1.user_id=t2.user_id 
and month(t1.event_date)-month(t2.event_date)=1
) as temp
group by temp.curr_month;

-- Query 123
CREATE TABLE advertiser (
    user_id VARCHAR(50) PRIMARY KEY,
    status VARCHAR(20)  
);


INSERT INTO advertiser (user_id, status) VALUES
('bing', 'NEW'),
('yahoo', 'NEW'),
('alibaba', 'EXISTING');

CREATE TABLE daily_pay (
    user_id VARCHAR(50),
    paid DECIMAL(10,2)
);

INSERT INTO daily_pay (user_id, paid) VALUES
('yahoo', 45.00),
('alibaba', 100.00),
('target', 13.00);