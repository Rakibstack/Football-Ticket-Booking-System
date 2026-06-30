CREATE TABLE users(

user_id SERIAL PRIMARY KEY,

full_name VARCHAR(100) NOT NULL,

email VARCHAR(100) UNIQUE NOT NULL,

role VARCHAR(50)
CHECK(role IN ('Football Fan','Ticket Manager')),

phone_number VARCHAR(20)

);

CREATE TABLE matches(

match_id INT PRIMARY KEY,

fixture VARCHAR(100),

tournament_category VARCHAR(100),

base_ticket_price INT
CHECK(base_ticket_price >= 0),

match_status VARCHAR(50)
CHECK(
match_status IN
(
'Available',
'Selling Fast',
'Sold Out',
'Postponed'
)

)

);


CREATE TABLE bookings(

booking_id INT PRIMARY KEY,


user_id INT,


match_id INT,


seat_number VARCHAR(20),


payment_status VARCHAR(50)
CHECK(
payment_status IN
(
'Pending',
'Confirmed',
'Cancelled',
'Refunded'
)
),


total_cost INT
CHECK(total_cost >=0),



FOREIGN KEY(user_id)
REFERENCES users(user_id),


FOREIGN KEY(match_id)
REFERENCES matches(match_id)

);

