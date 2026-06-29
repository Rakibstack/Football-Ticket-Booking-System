
CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50),
    phone_number VARCHAR(20)
);

CREATE TABLE matches(
    match_id INT PRIMARY KEY,
    fixture VARCHAR(100),
    tournament_category VARCHAR(100),
    base_ticket_price INT,
    match_status VARCHAR(50)
);

CREATE TABLE bookings(
    booking_id INT PRIMARY KEY,

    user_id INT,
    match_id INT,

    seat_number VARCHAR(20),

    payment_status VARCHAR(50),

    total_cost INT,


    FOREIGN KEY(user_id)
    REFERENCES users(user_id),

    FOREIGN KEY(match_id)
    REFERENCES matches(match_id)
);
