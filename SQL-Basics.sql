use assignment;
create table city (
id int,
name varchar(30),
DE varchar(10),
District varchar(30),
population int);
alter table city modify column id varchar(300);
alter table city modify column population varchar(500);

insert into city values ('6','Rotterdam','NLD','Zuid-Holland','');
insert into city values ('19','Zaanstad','NLD','Noord-Holland','135621');
insert into city values ('214','Porto Alegre','BRA','Rio Grande do Sul','1314032');
insert into city values ('397','Lauro de Freitas','BRA','Bahia','109236');
insert into city values ('547','Dobric','BGR','Varna','100399');
insert into city values ('552','Bujumbura','BDI','Bujumbura','300000');
insert into city values ('554','Santiago de Chile','CHL','Santiago','4703954');
insert into city values ('626','al-Minya','EGY','al-Minya','201360');
insert into city values ('646','Santa Ana','SLV','Santa Ana','139389');
insert into city values ('762','Bahir','Dar','ETH Amhara','96140');
insert into city values ('796','Baguio','PHL','CAR','252386');
insert into city values ('896','Malungon','PHL','Southern Mindanao','93232');
insert into city values ('904','Banjul','GMB','Banjul','42326');
insert into city values ('924','Villa','Nueva','GTM','101295');
insert into city values ('990','Waru','IDN','East Java','124300');
insert into city values ('1155','Latur','IND','Maharashtra','197408');
insert into city values ('1222','Tenali','IND','Andhra Pradesh','143726');
insert into city values ('1235','Tirunelveli','IND','Tamil Nadu','135825');
insert into city values ('1256','Alandur','IND','Tamil Nadu','125244');
insert into city values ('1279','Neyveli','IND','Tamil Nadu','118080');
insert into city values ('1293','Pallavaram','IND','Tamil Nadu','111866');
insert into city values ('1350','Dehri','IND','Bihar','94526');
insert into city values ('1383','Tabriz','IRN','East Azerbaidzan','1191043');
insert into city values ('1385','Karaj','IRN','Teheran','940968');
insert into city values ('1508','Bolzano','ITA','Trentino-Alto Adige','97232');
insert into city values ('1520','Cesena','ITA','Emilia-Romagna','89852');
insert into city values ('1613','Neyagawa','JPN','Osaka','257315');
insert into city values ('1630','Ageo','JPN','Saitama','209442');
insert into city values ('1661','Sayama','JPN','Saitama','162472');
insert into city values ('1681','Omuta','JPN','Fukuoka','142889');
insert into city values ('1739','Tokuyama','JPN','Yamaguchi','107078');
insert into city values ('1793','Novi Sad','YUG','Vojvodina','179626');
insert into city values ('1857','Kelowna','CAN','British Colombia','89442');
insert into city values ('1895','Harbin','CHN','Heilongjiang','4289800');
insert into city values ('1900','Changchun','CHN','Jilin','2812000');
insert into city values ('1913','Lanzhou','CHN','Gansu','1565800');
insert into city values ('1947','Changzhou','CHN','Jiangsu','530000');
insert into city values ('2070','Dezhou','CHN','Shandong','195485');
insert into city values ('2081','Heze','CHN','Shandong','189293');
insert into city values ('2111','Chenzhou','CHN','Hunan','169400');
insert into city values ('2153','Xianning','CHN','Hubei','136811');
insert into city values ('2192','Lhasa','CHN','Tibet','120000');
insert into city values ('2193','Lianyuan','CHN','Hunan','118858');
insert into city values ('2227','Xingcheng','CHN','Liaoning','102384');
insert into city values ('2273','Villavicencio','COL','Meta','273140');
insert into city values ('2384','Tong-yong','KOR','Kyongsangnam','131717');
insert into city values ('2386','Yongju','KOR','Kyongsangbuk','131097');
insert into city values ('2387','Chinhae','KOR','Kyongsangnam','125997');
insert into city values ('2388','Sangju','KOR','Kyongsangbuk','124116');
insert into city values ('2406','Herakleion','GRC','Crete','116178');
insert into city values ('2440','Monrovia','LBR','Montserrado','850000');
insert into city values ('2462','Lilongwe','MWI','Lilongwe','435964');
insert into city values ('2505','Taza','MAR','Taza-Al Hoceima-Taou','92700');
insert into city values ('2555','Xalapa','MEX','Veracruz','390058');
insert into city values ('2602','Ocosingo','MEX','Chiapas','171495');
insert into city values ('2609','Nogales','MEX','Sonora','159103');
insert into city values ('2670','San Pedro Cholula','MEX','Puebla','99734');
insert into city values ('2689','Palikir','FSM','Pohnpei','8600');
insert into city values ('2706','Tete','MOZ','Tete','101984');
insert into city values ('2716','Sittwe (Akyab)','MMR','Rakhine','137600');
insert into city values ('2922','Carolina','PRI','Carolina','186076');
insert into city values ('2967','Grudziadz','POL','Kujawsko-Pomorskie','102434');
insert into city values ('2972','Malabo','GNQ','Bioko','40000');
insert into city values ('3073','Essen','DEU','Nordrhein-Westfalen','599515');
insert into city values ('3169','Apia','WSM','Upolu','35900');
insert into city values ('3198','Dakar','SEN','Cap-Vert','785071');
insert into city values ('3253','Hama','SYR','Hama','343361');
insert into city values ('3288','Luchou','TWN','Taipei','160516');
insert into city values ('3309','Tanga','TZA','Tanga','137400');
insert into city values ('3353','Sousse','TUN','Sousse','145900');
insert into city values ('3377','Kahramanmaras','TUR','Kahramanmaras','245772');
insert into city values ('3430','Odesa','UKR','Odesa','1011000');
insert into city values ('3581','St Petersburg','RUS','Pietari','4694000');
insert into city values ('3770','Hanoi','VNM','Hanoi','1410000');
insert into city values ('3815','El Paso','USA','Texas','563662');
insert into city values ('3878','Scottsdale','USA','Arizona','202705');
insert into city values ('3965','Corona','USA','California','124966');
insert into city values ('3973','Concord','USA','California','121780');
insert into city values ('3977','Cedar Rapids','USA','Iowa','120758');
insert into city values ('3982','Coral Springs','USA','Florida','117549');
insert into city values ('4054','Fairfield','USA','California','92256');
insert into city values ('4058','Boulder','USA','Colorado','91238');
insert into city values ('4061','Fall River','USA','Massachusetts','90555');



CREATE TABLE station (
    id INT,
    city VARCHAR(100),
    state VARCHAR(10),
    lat_N INT,
    long_W INT
);

-- Insert all rows
INSERT INTO station (id, city, state, lat_N, long_W) VALUES
(794, 'Kissee Mills', 'MO', 139, 73),
(824, 'Loma Mar', 'CA', 48, 130),
(603, 'Sandy Hook', 'CT', 72, 148),
(478, 'Tipton', 'IN', 33, 97),
(619, 'Arlington', 'CO', 75, 92),
(711, 'Turner', 'AR', 50, 101),
(839, 'Slidell', 'LA', 85, 151),
(411, 'Negreet', 'LA', 98, 105),
(588, 'Glencoe', 'KY', 46, 136),
(665, 'Chelsea', 'IA', 98, 59),
(342, 'Chignik Lagoon', 'AK', 103, 153),
(733, 'Pelahatchie', 'MS', 38, 28),
(441, 'Hanna City', 'IL', 50, 136),
(811, 'Dorrance', 'KS', 102, 121),
(698, 'Albany', 'CA', 49, 80),
(325, 'Monument', 'KS', 70, 141),
(414, 'Manchester', 'MD', 73, 37),
(113, 'Prescott', 'IA', 39, 65),
(971, 'Graettinger', 'IA', 94, 150),
(266, 'Cahone', 'CO', 116, 127),
(617, 'Sturgis', 'MS', 36, 126),
(495, 'Upperco', 'MD', 114, 29),
(473, 'Highwood', 'IL', 27, 150),
(959, 'Waipahu', 'HI', 106, 33),
(438, 'Bowdon', 'GA', 88, 78),
(571, 'Tyler', 'MN', 133, 58),
(92, 'Watkins', 'CO', 83, 96),
(399, 'Republic', 'MI', 75, 130),
(426, 'Millville', 'CA', 32, 145),
(844, 'Aguanga', 'CA', 79, 65),
(321, 'Bowdon Junction', 'GA', 85, 33),
(606, 'Morenci', 'AZ', 104, 110),
(957, 'South El Monte', 'CA', 74, 79),
(833, 'Hoskinston', 'KY', 65, 65),
(843, 'Talbert', 'KY', 39, 58),
(166, 'Mccomb', 'MS', 74, 42),
(339, 'Kirk', 'CO', 141, 136),
(909, 'Carlock', 'IL', 117, 84),
(829, 'Seward', 'IL', 72, 90),
(766, 'Gustine', 'CA', 111, 140),
(392, 'Delano', 'CA', 126, 91),
(555, 'Westphalia', 'MI', 32, 143),
(33, 'Saint Elmo', 'AL', 27, 50),
(728, 'Roy', 'MT', 41, 51),
(656, 'Pattonsburg', 'MO', 138, 32),
(394, 'Centertown', 'MO', 133, 93),
(366, 'Norvell', 'MI', 125, 93),
(96, 'Raymondville', 'MO', 70, 148),
(867, 'Beaver Island', 'MI', 81, 164),
(977, 'Odin', 'IL', 53, 115),
(741, 'Jemison', 'AL', 62, 25),
(436, 'West Hills', 'CA', 68, 73),
(323, 'Barrigada', 'GU', 60, 147),
(3, 'Hesperia', 'CA', 106, 71),
(814, 'Wickliffe', 'KY', 80, 46),
(375, 'Culdesac', 'ID', 47, 78),
(467, 'Roselawn', 'IN', 87, 51),
(604, 'Forest Lakes', 'AZ', 144, 114),
(551, 'San Simeon', 'CA', 37, 28),
(706, 'Little Rock', 'AR', 122, 121),
(647, 'Portland', 'AR', 83, 44),
(25, 'New Century', 'KS', 135, 79),
(250, 'Hampden', 'MA', 76, 26),
(124, 'Pine City', 'MN', 119, 129);
INSERT INTO station (id, city, state, lat_N, long_W) VALUES(
250, 'Hampden', 'MA', 76, 26),
(124, 'Pine City', 'MN', 119, 129);
-- Query1
select name from city where DE='USA' and population>100000;
-- Query2
select name from city where DE='USA' and population>120000;
-- Query3 
select * from city;
-- Query 4
select * from city where id='1661';
-- Query 5
select * from city where DE='JPN';
-- Query 6
select name from city where DE='JPN';
-- Query 7
select city,state from station;
-- Query 8
select id,city from station where id%2=0;
-- Query 9
select (count(city)  - count(distinct(city)) ) as differnce from station;
-- Query 10
(select city,length(city) from station order by length(city),city limit 1)
union 
(select city,length(city) from station  order by length(city) desc ,city limit 1);
;
-- Query 11
select distinct city from station where regexp_like(city,'^[aeiou]');

-- Query 12
select distinct city from station where regexp_like(city,'[aeiou]$');

-- Query 13

select  distinct city from station where regexp_like(city,'^[^aeiou]');

-- Query 14
select  distinct city from station where regexp_like(city,'[^aeiou]$');

-- Query 15
select distinct city from station where   REGEXP_LIKE(city, '^[^aeiou]') or   REGEXP_LIKE(city, '[^aeiou]$');


-- Query 16
select distinct city from station where   REGEXP_LIKE(city, '^[^aeiou]') and  REGEXP_LIKE(city, '[^aeiou]$');


CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price INT
);

-- Query 17
CREATE TABLE Sales (
    seller_id INT,
    product_id INT,
    buyer_id INT,
    sale_date DATE,
    quantity INT,
    price INT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
INSERT INTO Product (product_id, product_name, unit_price)
VALUES 
    (1, 'S8', 1000),
    (2, 'G4', 800),
    (3, 'iPhone', 1400);


INSERT INTO Sales (seller_id, product_id, buyer_id, sale_date, quantity, price)
VALUES 
    (1, 1, 1, '2019-01-21', 2, 2000),
    (1,2 , 2,'2019-02-17', 1, 800),
    (2,2 , 3, '2019-06-02',1 , 800),
    (3,3 , 4, '2019-05-13', 2, 2800);
select temp.product_id,p.product_name from 
(select product_id,min(sale_date)mindate,max(sale_date)maxdate
 from sales group by product_id having mindate>="2019-01-01" and maxdate<="2019-03-31")temp
 join product p
 on p.product_id = temp.product_id;
 
 -- Query 18
 CREATE TABLE Views (
    article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);
INSERT INTO Views (article_id, author_id, viewer_id, view_date)
VALUES 
    (1, 3, 5, '2019-08-01'),
    (1, 3, 6, '2019-08-02'),
    (2, 7, 7, '2019-08-01'),
    (2, 7, 6, '2019-08-02'),
    (4, 7, 1, '2019-07-22'),
    (3, 4, 4, '2019-07-21'),
    (3, 4, 4, '2019-07-21');
select distinct author_id from views where author_id=viewer_id order by author_id;

-- Query 19
CREATE TABLE Delivery (
    delivery_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    customer_pref_delivery_date DATE
);
INSERT INTO Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date)
VALUES 
    (1, 1, '2019-08-01', '2019-08-02'),
    (2, 5, '2019-08-02', '2019-08-02'),
    (3, 1, '2019-08-11', '2019-08-11'),
    (4, 3, '2019-08-24', '2019-08-26'),
    (5, 4, '2019-08-21', '2019-08-22'),
    (6, 2, '2019-08-11', '2019-08-13');
    
select
((select count(*) from delivery where order_date=customer_pref_delivery_date)
/count(4)*100)as immediate_orders
from delivery;

 -- Query 20
 create table ads(
 add_id int,
 user_id int,
 action ENUM('viewed','ignored','clicked'));
 INSERT INTO ads (add_id, user_id, action)
VALUES 
    (1, 1, 'Clicked'),
    (2, 2, 'Clicked'),
    (3, 3, 'Viewed'),
    (5, 5, 'Ignored'),
    (1, 7, 'Ignored'),
    (2, 7, 'Viewed'),
    (3, 5, 'Clicked'),
    (1, 4, 'Viewed'),
    (2, 11, 'Viewed'),
    (1, 2, 'Clicked');
with clicked as (
select  add_id,(count(user_id))clickedadd from ads where action='clicked'  group by add_id ),
viewed as(
select add_id,(count(user_id))viewedadd from ads where action='viewed'  group by add_id
)
select distinct  a.add_id,
round(
(
coalesce(
c.clickedadd/
(c.clickedadd
 +
(v.viewedadd)),0
)
*100),2)
as ctr
 from ads a left join clicked c on a.add_id=c.add_id 
left join viewed v on v.add_id=a.add_id order by ctr desc;

-- Query 21
create table employee_21(id int,team_id int);
insert into employee_21 values(1,8),(2,8),(3,8),(4,7),(5,9),(6,9);
select t1.id,t2.team_size from 
(select team_id,count(team_id)team_size from employee_21 group by team_id)t2
join employee_21 t1 on t1.team_id=t2.team_id;
 
 -- Query 22
 CREATE TABLE Countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100)
);
create table weather (country_id int ,weather_state int,day date,
foreign key(country_id) references countries(country_id));

INSERT INTO Countries (country_id, country_name)
VALUES 
    (2, 'USA'),
    (3, 'Australia'),
    (7, 'Peru'),
    (5, 'China'),
    (8, 'Morocco'),
    (9, 'Spain');
    
INSERT INTO Weather (country_id, weather_state, day)
VALUES 
    (2, 15, '2019-11-01'),
    (2, 12, '2019-10-28');
    select * from weather;
INSERT INTO Weather (country_id, weather_state, day)
VALUES 
    (2, 12, '2019-10-27'),
    (3, -2, '2019-11-10'),
    (3, 0, '2019-11-11'),
    (3, 3, '2019-11-12'),
    (5, 16, '2019-11-07'),
    (5, 18, '2019-11-09'),
    (5, 21, '2019-11-23'),
    (7, 25, '2019-11-28'),
    (7, 22, '2019-12-01'),
    (7, 20, '2019-12-02'),
    (8, 25, '2019-11-05'),
    (8, 27, '2019-11-15'),
    (8, 31, '2019-11-25'),
    (9, 7, '2019-10-23'),
    (9, 3, '2019-12-23');
    select c.country_name,temp.weather_type from (
    select country_id ,
    case 
     when avg(weather_state) <=15 then 'cold'
     when avg(weather_state)>=25 then 'hot'
     else 'warm'
	end as weather_type 
    from weather group by country_id
    ) temp join countries c on temp.country_id=c.country_id;

-- Query 23
CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    PRIMARY KEY (product_id, start_date, end_date)
);
CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT
);
INSERT INTO Prices (product_id, start_date, end_date, price)
VALUES 
    (1, '2019-02-17', '2019-02-28', 5),
    (1, '2019-03-01', '2019-03-22', 20),
    (2, '2019-02-01', '2019-02-20', 15),
    (2, '2019-02-21', '2019-03-31', 30);
INSERT INTO UnitsSold (product_id, purchase_date, units)
VALUES 
    (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);

select t1.product_id,
round(
sum(t2.units * t1.price)
/
sum(t2.units) ,2)as total_price
from prices t1 join unitssold t2 
on t1.product_id=t2.product_id and t2.purchase_date between t1.start_date and t1.end_date
group by t1.product_id;

-- Query 24
CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);
INSERT INTO Activity (player_id, device_id, event_date, games_played)
VALUES 
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);

select player_id , min(event_date)first_login_date from activity group by player_id;

-- Query 25
select p.player_id , p.device_id from (
select player_id ,
min(event_date)first_login_date
from activity group by player_id)temp join activity p
on temp.player_id=p.player_id and temp.first_login_date=p.event_date
;

-- Query 26

CREATE TABLE Products_26 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50)
);
INSERT INTO Products_26 (product_id, product_name, product_category)
VALUES 
    (1, 'Leetcode Solutions', 'Book'),
    (2, 'Jewels of Stringology', 'Book'),
    (3, 'HP', 'Laptop'),
    (4, 'Lenovo', 'Laptop'),
    (5, 'Leetcode Kit', 'T-shirt');
    CREATE TABLE Orders (
    product_id INT,
    order_date DATE,
    unit INT,
    FOREIGN KEY (product_id) REFERENCES Products_26(product_id)
);
INSERT INTO Orders (product_id, order_date, unit)
VALUES
    (1, '2020-02-05', 60),
    (1, '2020-02-10', 70),
    (2, '2020-01-18', 30),
    (2, '2020-02-11', 80),
    (3, '2020-02-17', 2),
    (3, '2020-02-24', 3),
    (4, '2020-03-01', 20),
    (4, '2020-03-04', 30),
    (4, '2020-03-04', 60),
    (5, '2020-02-25', 50),
    (5, '2020-02-27', 50),
    (5, '2020-03-01', 50);
select p.product_name,temp.unit from (
select product_id,sum(unit)unit from orders
where extract(month from order_date)=2
group by product_id having sum(unit)>=100) temp join products_26 as p on p.product_id=temp.product_id;

-- Query 27
CREATE TABLE Users (
    user_id INT,
    name VARCHAR(100),
    mail VARCHAR(100)
);
INSERT INTO Users (user_id, name, mail)
VALUES
    (1, 'jonathanisgreat', 'winston@leetcode.com'),
    (2, 'bella', 'bella-@leetcode.com'),
    (3, 'sally', 'sally.come@leetcode.com'),
    (4, 'marvan', 'quarz#2020@leetcode.com'),
    (5, 'david', 'david69@gmail.com'),
    (6, 'shapiro', '.shapo@leetcode.com');
select user_id,name,mail from Users where regexp_like(mail,'^[a-zA-Z][A-Za-z0-9\.-_]*\.@leetcode.com');

-- Query 28
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100)
);
CREATE TABLE Product_28 (
    product_id INT PRIMARY KEY,
    description VARCHAR(100),
    price INT
);
CREATE TABLE Orders_28 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product_28(product_id)
);

INSERT INTO Customers (customer_id, name, country) VALUES
(1, 'Winston', 'USA'),
(2, 'Jonathan', 'Peru'),
(3, 'Moustafa', 'Egypt');


INSERT INTO Product_28 (product_id, description, price) VALUES
(10, 'LC Phone', 300),
(20, 'LC T-Shirt', 10),
(30, 'LC Book', 45),
(40, 'LC Keychain', 2);

INSERT INTO Orders_28 (order_id, customer_id, product_id, order_date, quantity) VALUES
(1, 1, 10, '2020-06-10', 1),
(2, 1, 20, '2020-07-01', 1),
(3, 1, 30, '2020-07-08', 2),
(4, 2, 10, '2020-06-15', 2),
(5, 2, 40, '2020-07-01', 10),
(6, 3, 20, '2020-06-24', 2),
(7, 3, 30, '2020-06-25', 2),
(9, 3, 30, '2020-05-08', 3);
select temp.customer_id , c.name from 
(select o.customer_id ,
extract(month from o.order_date) as curr_month ,
extract(year from o.order_date) as curr_year ,
sum(p.price*o.quantity) as spent_amount
from orders_28 o join product_28 p 
on o.product_id=p.product_id
group by o.customer_id , curr_year ,curr_month
having curr_year ='2020'
)temp join customers c
on c.customer_id=temp.customer_id
where (temp.curr_month=6 and  temp.spent_amount>=100) 
or (temp.curr_month=7 and  temp.spent_amount>=100) 
group by customer_id having count(9)=2 ;

-- Query 29
-- Content table
CREATE TABLE Content (
    content_id INT PRIMARY KEY,
    title VARCHAR(100),
    Kids_content ENUM('Y', 'N'),
    content_type VARCHAR(50)
);

-- TVProgram table
CREATE TABLE TVProgram (
    program_date DATETIME,
    content_id INT,
    channel VARCHAR(100),
    PRIMARY KEY (program_date, content_id),
    FOREIGN KEY (content_id) REFERENCES Content(content_id)
);
-- Insert data into Content table
INSERT INTO Content (content_id, title, Kids_content, content_type) VALUES
(1, 'Alg. for Kids', 'Y', 'Series'),
(2, 'Database Sols', 'N', 'Series'),
(3, 'Aladdin', 'Y', 'Movies'),
(4, 'Cinderella', 'Y', 'Movies'),
(5, 'Leetcode', 'N', 'Movies');

-- Insert data into TVProgram table
INSERT INTO TVProgram (program_date, content_id, channel) VALUES
('2020-06-10 08:00', 1, 'LC-Channel'),
('2020-05-11 12:00', 2, 'LC-Channel'),
('2020-06-12 12:00', 3, 'LC-Channel'),
('2020-05-12 12:00', 3, 'LC-Channel'),
('2020-05-13 14:00', 4, 'Disney Ch'),
('2020-07-15 16:00', 5, 'Disney Ch');

select
c.title
from content c 
join TVProgram t
on c.content_id=t.content_id where
c.kids_content='Y' and 
c.content_type='movies' 
AND t.program_date like "2020-06%";

-- Query 30
create table npv(
id int,
year int,
npv int);


create table queries(
id int,
year int);
-- Insert data into NPV table
INSERT INTO NPV (id, year, npv) VALUES
(1, 2018, 100),
(7, 2020, 30),
(13, 2019, 40),
(1, 2019, 113),
(2, 2008, 121),
(3, 2009, 12),
(11, 2020, 99),
(7, 2019, 0);

-- Insert data into Queries table
INSERT INTO Queries (id, year) VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019);

select q.id,q.year,coalesce(n.npv,0) from queries q left join npv n 
on q.id=n.id and q.year=n.year;

-- Query 32
-- Employees table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- EmployeeUNI table
CREATE TABLE EmployeeUNI (
    id INT PRIMARY KEY,
    unique_id INT
);
-- Insert data into Employees
INSERT INTO Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

-- Insert data into EmployeeUNI
INSERT INTO EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);
select u.unique_id , e.name 
from employees e 
left join
employeeuni u 
on u.id=e.id;

-- Query 33
-- Users table
CREATE TABLE Users_33 (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Rides table
CREATE TABLE Rides (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT,
    FOREIGN KEY (user_id) REFERENCES Users_33(id)
);
-- Insert data into Users
INSERT INTO Users_33 (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Alex'),
(4, 'Donald'),
(7, 'Lee'),
(13, 'Jonathan'),
(19, 'Elvis');

-- Insert data into Rides
INSERT INTO Rides (id, user_id, distance) VALUES
(1, 1, 120),
(2, 2, 317),
(3, 3, 222),
(4, 7, 100),
(5, 13, 312),
(6, 19, 50),
(7, 7, 120),
(8, 19, 400),
(9, 7, 230);

select u.name,
coalesce(sum(r.distance),0)distance_travelled 
from  users_33 u  left join rides r
 
 on u.id=r.user_id
 group by r.user_id 
 order by distance_travelled desc , name  ;
 
 -- Query 34
 select * from orders;
 select * from product;
 select o.product_id,p.product_name,
 sum(unit)amount
 from orders o join product p
 on p.product_id=o.product_id 
 where order_date like '2020-02%'
 group by product_id having amount>=100;
 
 -- Query 35
 -- Movies table
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100)
);

-- Users table
CREATE TABLE Users_35 (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- MovieRating table
CREATE TABLE MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES Users_35(user_id)
);
-- Insert into Movies
INSERT INTO Movies (movie_id, title) VALUES
(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');

-- Insert into Users
INSERT INTO Users_35 (user_id, name) VALUES
(1, 'Daniel'),
(2, 'Monica'),
(3, 'Maria'),
(4, 'James');

-- Insert into MovieRating
INSERT INTO MovieRating (movie_id, user_id, rating, created_at) VALUES
(1, 1, 3, '2020-01-12'),
(1, 2, 4, '2020-02-11'),
(1, 3, 2, '2020-02-12'),
(1, 4, 1, '2020-01-01'),
(2, 1, 5, '2020-02-17'),
(2, 2, 2, '2020-02-01'),
(2, 3, 2, '2020-03-01'),
(3, 1, 3, '2020-02-22'),
(3, 2, 4, '2020-02-25');

 (select u.name as results from users_35 u join(
 select user_id,count(*)total from movierating 
 group by user_id) temp 
 on temp.user_id = u.user_id 
 order by temp.total desc, u.name limit 1
 )
 union 
 (
select m.title as results from(
select movie_id , 
avg(rating) averageRating from movierating 
where created_at like '2020-02%'
 group by movie_id)temp
 join movies m
 on m.movie_id=temp.movie_id 
 order by temp.averageRating desc,title limit 1 
);
-- Query 36
CREATE TABLE Users_36 (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Rides_36 (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT,
    FOREIGN KEY (user_id) REFERENCES Users_36(id)
);
INSERT INTO Users_36 (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Alex'),
(4, 'Donald'),
(7, 'Lee'),
(13, 'Jonathan'),
(19, 'Elvis');
INSERT INTO Rides (id, user_id, distance) VALUES
(1, 1, 120),
(2, 2, 317),
(3, 3, 222),
(4, 7, 100),
(5, 13, 312),
(6, 19, 50),
(7, 19, 120),
(8, 7, 400),
(9, 7, 230);
select * from users_36;
select * from rides;
select u.name , temp.travelled_distance from users_36 u join (
select user_id,sum(distance) as travelled_distance from rides group by user_id) temp
on u.id=temp.user_id order by travelled_distance desc , name 
;

-- Query 38
CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT
);

INSERT INTO Departments (id, name) VALUES
(1, 'Electrical Engineering'),
(7, 'Computer Engineering'),
(13, 'Business Administration');
INSERT INTO Students (id, name, department_id) VALUES
(23, 'Alice', 1),
(1, 'Bob', 7),
(5, 'Jennifer', 13),
(2, 'John', 14),
(4, 'Jasmine', 77),
(3, 'Steve', 74),
(6, 'Luis', 1),
(8, 'Jonathan', 7),
(7, 'Daiana', 33),
(11, 'Madelynn', 1);

select id,name from students
where department_id not in (select id from departments);

-- Query 39
CREATE TABLE Calls (
    from_id INT,
    to_id INT,
    duration INT
);

INSERT INTO Calls (from_id, to_id, duration) VALUES
(1, 2, 59),
(2, 1, 11),
(1, 3, 20),
(3, 4, 100),
(3, 4, 200),
(3, 4, 200),
(4, 3, 499);

--  Write an SQL query to report the number of calls and the total call duration between each pair of
--  distinct persons (person1, person2) where person1 < person2
 
select least(from_id,to_id)person1,
greatest(from_id , to_id)person2,
count(2) as call_count,
sum(duration) as total_duration 
from calls
group by person1 ,person2
;
-- Query 41
CREATE TABLE Products_41 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    width INT,
    length INT,
    height INT
);

CREATE TABLE Warehouse (

    name VARCHAR(50),
    product_id INT,
    units INT,
    FOREIGN KEY (product_id) REFERENCES Products_41(product_id)
);
INSERT INTO Products_41 (product_id, product_name, width, length, height) VALUES
(1, 'LC-TV', 5, 50, 40),
(2, 'LCKeyChain', 5, 5, 5),
(3, 'LCPhone', 2, 10, 10),
(4, 'LC-TShirt', 4, 10, 20);
INSERT INTO Warehouse (name, product_id, units) VALUES
('LCHouse1', 1, 1),
('LCHouse1', 2, 10),
('LCHouse1', 3, 5),
('LCHouse2', 1, 2),
('LCHouse2', 2, 2),
('LCHouse3', 4, 1);

-- Write an SQL query to report the number of cubic feet of volume the inventory occupies in each
--  warehouse.
select w.name,
sum(w.units*p.width*p.length*p.height)as volume 
from warehouse w
join
products_41 p
on w.product_id=p.product_id group by w.name;

-- Query 42
CREATE TABLE Sales_42 (
    sale_date DATE,
    fruit VARCHAR(50),
    sold_num INT
);
INSERT INTO Sales_42 (sale_date, fruit, sold_num) VALUES
('2020-05-01', 'apples', 10),
('2020-05-01', 'oranges', 8),
('2020-05-02', 'apples', 15),
('2020-05-02', 'oranges', 15),
('2020-05-03', 'apples', 20),
('2020-05-03', 'oranges', 0),
('2020-05-04', 'apples', 15),
('2020-05-04', 'oranges', 16);

-- Write an SQL query to report the difference between the number of apples and oranges sold each day 

select s1.sale_date,
s1.sold_num-s2.sold_num  as diff
from sales_42 s1 join sales_42 s2 
on s1.sale_date=s2.sale_date and s1.fruit='apples' and s2.fruit='oranges';

-- Query 43
--  Write an SQL query to report the fraction of players that logged in again on the day after the day
--  they first logged in, rounded to 2 decimal places

select * from activity;

select round(
u1.player_id/(select count(distinct player_id) from activity),2)as fraction from activity u1 join activity u2
on u1.player_id=u2.player_id 
and datediff(u1.event_date,u2.event_date)=1;

-- Query 44
CREATE TABLE Employee_44 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(10),
    managerId INT,
    FOREIGN KEY (managerId) REFERENCES Employee_44(id)
);
INSERT INTO Employee_44 (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);
--  Write an SQL query to report the managers with at least five direct reports
select name from employee_44 where id in(
select managerid from employee_44 where managerid is not null group by managerid having count(1) >=5);

-- Query 45
-- Department table
CREATE TABLE Department_45 (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

-- Student table
CREATE TABLE Student_45 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    gender VARCHAR(1),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department_45(dept_id)
);

-- Insert into Department
INSERT INTO Department_45 (dept_id, dept_name) VALUES
(1, 'Engineering'),
(2, 'Science'),
(3, 'Law');

-- Insert into Student
INSERT INTO Student_45 (student_id, student_name, gender, dept_id) VALUES
(1, 'Jack', 'M', 1),
(2, 'Jane', 'F', 1),
(3, 'Mark', 'M', 2);

--  Write an SQL query to report the respective department name and number of students majoring in
--  each department for all departments in the Department tab
select d.dept_name , coalesce(temp.student_number,0)student_number from department_45 d left join
(select dept_id,count(1)student_number from student_45 group by dept_id)temp 
on d.dept_id=temp.dept_id;

-- query 46

create table customers_46(
customer_id int,
product_key int);
create table product_46(
product_key int);
insert into customers_46 values (1,5),(2,6),(3,5),(3,6),(1,6);
insert into product_46 values(5),(6);


--  Write an SQL query to report the customer ids from the Customer table that bought all the products in
--  the Product table.
select customer_id from customers_46 group by customer_id having 
count(distinct product_key) = (select count(distinct product_key)
 from product_46) ;

-- query 47
create table project(
project_id int,
employee_id int);

create table employee_47(
 emp_id int,
 name varchar(40),
 experience_years int);
 
 INSERT INTO employee_47 (emp_id, name, experience_years) VALUES
(1, 'khaled ', 3),
(2, 'Ali', 2),
(3, 'John', 3),
(4, 'Doe', 2);

INSERT INTO Project (project_id, employee_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);
-- Write an SQL query that reports the most experienced employees in each project. In case of a tie,
--  report all employees with the maximum number of experience years.
select temp.project_id,temp.employee_id from
(select p.project_id,p.employee_id, rank() over(partition by p.project_id order by e.experience_years desc)as ranks from 
employee_47 e join project p on e.emp_id=p.employee_id)temp where ranks=1;

-- query 48
create table  Books
(
book_id int,
name VARCHAR(50),
available_from date,
constraint pk PRIMARY KEY (book_id)
);
insert into Books VALUES
 (1,'"Kalila And Demna"','2010-01-01'),
 (2,'"28 Letters"','2012-05-12'),
 (3,'"The Hobbit"','2019-06-10'),
 (4,'"13 Reasons Why"','2010-01-01'),
(5,'"The Hunger Games"','2008-09-21');
create table  Orders_48
(
order_id int,
book_id int,
quantity int,
dispatch_date date,
constraint pk PRIMARY KEY (order_id),
constraint fk FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
insert into Orders_48 VALUES
(1,1,2,'2018-07-26'),
(2,1,1,'2018-11-05'),
(3,3,8,'2019-06-11'),
(4,4,6,'2019-06-05'),
(5,4,5,'2019-06-20'),
(6,5,9,'2009-02-02'),
(7,5,8,'2010-04-13');
-- Write an SQL query that reports the books that have sold less than 10 copies in the last year,
--  excluding books that have been available for less than one month from today. Assume today is
--  2019-06-23.
select b.name from(
select book_id,sum(quantity)total from orders_48
 where dispatch_date between "2018-06-23" and "2019-06-23"
 group by book_id and dispatch_date<"2019-05-23")temp join books b on 
 b.book_id=temp.book_id and total>=10
 ;






-- query 49
CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    grade INT,
    PRIMARY KEY (student_id, course_id)
);
INSERT INTO Enrollments (student_id, course_id, grade) VALUES
(2, 2, 95),
(2, 3, 95),
(1, 1, 90),
(1, 2, 99),
(3, 1, 80),
(3, 2, 75),
(3, 3, 82);
-- Write a SQL query to find the highest grade with its corresponding course for each student. In case of
--  a tie, you should find the course with the smallest course_id.
select temp.student_id,temp.course_id,temp.grade from (
select student_id,course_id,grade,row_number()
over(partition by student_id order by grade desc,
course_id) as ranks from enrollments) temp where temp.ranks=1;


-- query 50
-- Teams table
CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100)
);

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    group_id INT
);
-- Matches table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    host_team INT,
    guest_team INT,
    host_goals INT,
    guest_goals INT,
    FOREIGN KEY (host_team) REFERENCES players(player_id),
    FOREIGN KEY (guest_team) REFERENCES players(player_id)
);


INSERT INTO Players (player_id, group_id) VALUES
(15, 1),
(25, 1),
(30, 1),
(45, 1),
(10, 2),
(35, 2),
(50, 2),
(20, 3),
(40, 3);
drop table matches;
INSERT INTO Matches  VALUES
(1, 15, 45, 3, 0),
(2, 30, 25, 1, 2),
(3, 30, 15, 2, 0),
(4, 40, 20, 5, 2),
(5, 35, 50, 1, 1);

--  The winner in each group is the player who scored the maximum total points within the group. In the
--  case of a tie, the lowest player_id wins.
--  Write an SQL query to find the winner in each group.
--  Return the result table in any order.
 
 
WITH Scores AS (
    SELECT host_team AS player_id, host_goals AS score FROM Matches
    UNION ALL
    SELECT guest_team AS player_id, guest_goals AS score FROM Matches
),
PlayerWithGroup AS
 (select s.player_id,sum(s.score)as totalpoints
 ,p.group_id from scores s join players p
on p.player_id=s.player_id 
group by s.player_id 
order by group_id)
select temp.group_id ,temp.player_id from
(select player_id,group_id ,row_number() 
over(partition by group_id order by totalpoints desc ,player_id)as ranks
from PlayerWithGroup)temp where temp.ranks=1;

