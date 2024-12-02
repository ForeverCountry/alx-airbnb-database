-- Initial Complex Query
SELECT 
    B.booking_id,
    B.start_date,
    B.end_date,
    B.status,
    U.user_id,
    U.first_name,
    U.last_name,
    U.email,
    P.property_id,
    P.name AS property_name,
    P.location,
    PY.payment_id,
    PY.amount,
    PY.payment_method
FROM 
    Booking B
JOIN 
    User U 
ON 
    B.user_id = U.user_id
JOIN 
    Property P 
ON 
    B.property_id = P.property_id
LEFT JOIN 
    Payment PY 
ON 
    B.booking_id = PY.booking_id;

-- Refactored Query
SELECT 
    B.booking_id,
    B.start_date,
    B.end_date,
    B.status,
    U.first_name,
    U.last_name,
    P.name AS property_name,
    P.location,
    PY.amount,
    PY.payment_method
FROM 
    Booking B
JOIN 
    User U 
ON 
    B.user_id = U.user_id
JOIN 
    Property P 
ON 
    B.property_id = P.property_id
JOIN 
    Payment PY 
ON 
    B.booking_id = PY.booking_id
WHERE 
    B.status = 'confirmed';
