# Airbnb Database Schema Script

## Introduction
This repository contains the SQL script (`schema.sql`) to define the database schema for an Airbnb-like platform. The schema is based on the provided database specification and adheres to normalization principles up to Third Normal Form (3NF). This script ensures the creation of tables, constraints, and indexes to optimize database performance and maintain data integrity.

## Schema Details
The schema defines the following tables:
1. **User**: Manages user information, including roles (guest, host, admin).
2. **Property**: Stores details of properties listed by hosts.
3. **Booking**: Tracks reservations made by users for properties.
4. **Payment**: Handles payment details for bookings.
5. **Review**: Allows users to leave feedback on properties.
6. **Message**: Facilitates communication between users.

### Features
- **Primary Keys**: Ensures uniqueness of each row in the database.
- **Foreign Keys**: Maintains referential integrity between related tables.
- **Constraints**: Enforces rules for data consistency (e.g., rating values, unique emails).
- **Indexes**: Improves query performance for frequently accessed columns.
