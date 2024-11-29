-- Insert Sample Data into User Table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('uuid-1', 'Maxy', 'Kajiwonele', 'maxy@example.com', 'hashed_password_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
    ('uuid-2', 'Forver', 'Country', '4ever@example.com', 'hashed_password_2', '0987654321', 'host', CURRENT_TIMESTAMP),
    ('uuid-3', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_password_3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Insert Sample Data into Property Table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
    ('uuid-10', 'uuid-2', 'Cozy Apartment', 'A comfortable apartment in the city center.', 'New York, NY', 120.50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('uuid-11', 'uuid-2', 'Beachside Villa', 'Luxury villa with ocean views.', 'Miami, FL', 350.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Sample Data into Booking Table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, status, created_at)
VALUES
    ('uuid-20', 'uuid-10', 'uuid-1', '2024-12-01', '2024-12-05', 'confirmed', CURRENT_TIMESTAMP),
    ('uuid-21', 'uuid-11', 'uuid-1', '2024-12-10', '2024-12-15', 'pending', CURRENT_TIMESTAMP);

-- Insert Sample Data into Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('uuid-30', 'uuid-20', 482.00, CURRENT_TIMESTAMP, 'credit_card');

-- Insert Sample Data into Review Table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('uuid-40', 'uuid-10', 'uuid-1', 5, 'Amazing stay! Highly recommend.', CURRENT_TIMESTAMP),
    ('uuid-41', 'uuid-11', 'uuid-1', 4, 'Beautiful views, but a bit pricey.', CURRENT_TIMESTAMP);

-- Insert Sample Data into Message Table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('uuid-50', 'uuid-1', 'uuid-2', 'Hi, is the Beachside Villa available for December 10-15?', CURRENT_TIMESTAMP),
    ('uuid-51', 'uuid-2', 'uuid-1', 'Yes, it is available. Let me know if you need more details!', CURRENT_TIMESTAMP);

