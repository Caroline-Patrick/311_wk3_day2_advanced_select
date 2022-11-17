select * from usersAddress;

-- sum userIds by state and order by sums. Here we give the sum(user_id) a variable of totals, so we can order by it later.
select sum(user_id) AS totals, state from usersAddress group by state order by totals;

-- WY
select sum(user_id), state from usersAddress where state = 'WY';
-- AK
select sum(user_id), state from usersAddress where state ='AK';
-- CT
select sum(user_id), state from usersAddress where state ='CT';
-- TX
select sum(user_id), state from usersAddress where state ='TX';

-- Find the most popular area code in the usersContact table.
select * from usersContact;

select substr(phone1, 1, 3) as area_code, 
count(substr(phone1, 1, 3)) as area_count 
from usersContact 
group by area_code 
order by area_count desc;

-- Find the MIN first_name, the county, and a count of all users in that county for counties with more than 10 users. There will be four results. List the last one.
-- Hint: MIN, COUNT, JOIN, GROUP BY, HAVING

-- first_name
select * from users;

-- county
select * from usersAddress;
-- start here: 

select 
	min(first_name),
    county, COUNT(county) as counties

from 
	users u
    -- u here is just an optional variable for users
join 
	usersAddress ua
    
where 
	u.id = ua.id

group by 
	county
having 
	counties >10;
    
-- just trying to figure out what min is doing with first_name.. maybe least amount of characters, but there is another name with 5 char as well
select 
first_name,
county

from 
	users u
    
join 
	usersAddress ua
    
where 
	u.id = ua.id

order by 
	county;



