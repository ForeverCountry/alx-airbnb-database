# Normalization Steps for Airbnb Database

## Introduction
This document explains the steps taken to normalize the Airbnb database schema to Third Normal Form (3NF). The goal is to eliminate redundancies and ensure a consistent, efficient database design.

## Normalization Steps

### 1. First Normal Form (1NF)
- Verified that all attributes are atomic and there are no repeating groups or multivalued attributes.
- Result: The schema satisfies 1NF.

### 2. Second Normal Form (2NF)
- Verified that all tables have single-column primary keys, eliminating partial dependencies.
- Result: The schema satisfies 2NF.

### 3. Third Normal Form (3NF)
- Identified a transitive dependency in the `Booking` table:
  - `total_price` can be derived from `start_date`, `end_date`, and `pricepernight` in the `Property` table.
  - Removed `total_price` to eliminate the transitive dependency.
- Verified that no other attributes depend on non-key attributes.
- Result: The schema satisfies 3NF.

## Final Normalized Schema
The final schema, satisfying 3NF, is documented below:
- **User**
- **Property**
- **Booking**
- **Payment**
- **Review**
- **Message**

Refer to the ERD diagram for a visual representation.

