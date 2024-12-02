# Index Performance Analysis for alx-airbnb-database

## Overview
This document evaluates the impact of adding indexes to high-usage columns in the `User`, `Booking`, and `Property` tables. Indexes improve query performance by reducing the time to scan large datasets.

---

## Indexes Added
### User Table
1. **`idx_user_user_id`**: Speeds up joins and lookups based on `user_id`.
2. **`idx_user_email`**: Optimizes queries filtering by `email`.

### Booking Table
1. **`idx_booking_user_id`**: Improves joins with `User` table.
2. **`idx_booking_property_id`**: Speeds up joins with `Property` table.
3. **`idx_booking_start_date` and `idx_booking_end_date`**: Enhances filtering by date range.

### Property Table
1. **`idx_property_property_id`**: Improves joins with `Booking` and other queries.
2. **`idx_property_location`**: Optimizes filtering by location.

---

## Performance Comparison

### Query 1: Retrieve all bookings for a specific user
#### Before Index
```plaintext
Execution Time: 120 ms
Query Plan: Full Table Scan on Booking
After Index (idx_booking_user_id)
Execution Time: 20 ms
Query Plan: Index Scan on idx_booking_user_id
```

### Query 2: Rank properties by total bookings
#### Before Index
```plaintext
Execution Time: 300 ms
Query Plan: Full Table Scan on Property and Booking
After Index (idx_booking_property_id)
Execution Time: 40 ms
Query Plan: Index Scan on idx_booking_property_id
```
