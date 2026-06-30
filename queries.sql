
-- =====================================================
-- Query 1:
-- Champions League + Available matches
-- =====================================================
select match_id,fixture,base_ticket_price 
from matches
where tournament_category = 'Champions League'
 and match_status = 'Available'

-- =====================================================
-- Query 2:
-- Users with names starting with 'Tanvir' or containing 'Haque'
-- =====================================================    
select user_id,full_name,email from users
where full_name ilike 'Tanvir%' 
or full_name ilike '%Haque%'

-- =====================================================
-- Query 3:
-- Bookings with null payment status
-- ===================================================== 

select booking_id,user_id,match_id ,
coalesce(payment_status,'Action Required')
as systematic_status
from bookings 
where payment_status is null 

-- =====================================================
-- Query 4:
-- Retrieve Bookings with user and match details
-- ===================================================== 


select booking_id,full_name,fixture,total_cost
from bookings
inner join users using(user_id)
inner join matches using(match_id)

-- =====================================================
-- Query 5:
-- Display a comprehensive list using LEFT JOIN 
-- ===================================================== 

select u.user_id,u.full_name,b.booking_id
from users u
left join bookings b on u.user_id = b.user_id

-- =====================================================
-- Query 6:
-- Find all ticket bookings where the total cost is strictly higher than the average cost of all ticket bookings. 
-- ===================================================== 

select booking_id,match_id,total_cost
 from bookings
where total_cost > (select avg(total_cost) from bookings)

-- =====================================================
-- Query 7:
-- Find the top 2 most expensive matches based on base ticket price. 
-- ===================================================== 

select match_id,fixture,base_ticket_price 
from matches 
order by base_ticket_price desc limit 2 offset 1


