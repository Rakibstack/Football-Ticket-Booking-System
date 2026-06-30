
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
coalesce(payment_status,'Action Required') as systematic_status
from bookings 
where payment_status is null 


