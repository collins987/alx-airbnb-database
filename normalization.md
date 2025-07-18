# Airbnb Clone Database Normalization

## ÌæØ Objective
Ensure the Airbnb clone database schema is in **Third Normal Form (3NF)** by identifying and removing redundancies, ensuring data dependencies are logical, and optimizing table structure.

---

## Ì¥ç Step-by-Step Normalization

### 1Ô∏è‚É£ First Normal Form (1NF)
**Rules:**
- Each table has a primary key.
- All fields contain atomic (indivisible) values.
- No repeating groups or arrays.

**Applied Fixes:**
- Removed multi-valued fields (e.g., user phone numbers).
- Ensured one row per entity.
- Split concatenated fields like `full_name` into `first_name` and `last_name`.

---

### 2Ô∏è‚É£ Second Normal Form (2NF)
**Rules:**
- Must be in 1NF.
- No partial dependency of any column on a composite primary key.

**Applied Fixes:**
- Created separate tables for entities with partial dependency:
  - Moved `user_id` and `property_id` references out of `booking` and into their own table rows.
  - Isolated `location` details from `property` into a separate `locations` table to reduce repetition.

---

### 3Ô∏è‚É£ Third Normal Form (3NF)
**Rules:**
- Must be in 2NF.
- No transitive dependency (non-key fields depend only on primary key).

**Applied Fixes:**
- Extracted dependent data:
  - Removed `city`, `state`, `country` from `property` and placed in `locations`.
  - Removed `card_type`, `billing_address` from `payments` and placed in `payment_methods`.
- Ensured all non-key attributes in a table depend only on the primary key.

---

## ‚úÖ Final Normalized Tables (Summary)

| Table Name        | Purpose                                    |
|-------------------|--------------------------------------------|
| `users`           | Stores user info (email, name, etc.)       |
| `properties`      | Listings details                           |
| `locations`       | City, state, country linked to properties  |
| `bookings`        | Tracks which user books which property     |
| `payments`        | Stores amount, status, and method reference|
| `payment_methods` | Stores card type and billing info          |
| `reviews`         | User reviews for a property                |
| `messages`        | Communication between hosts and guests     |

---

## Ì∑† Benefits of 3NF
- Removes data duplication.
- Prevents update anomalies.
- Improves data integrity and consistency.
- Ensures optimal use of storage and indexing.

---

## Ì≥Å File Information
- **File Name:** `normalization.md`
- **Repo:** `alx-airbnb-database`
# Airbnb Clone Database Normalization

## ÌæØ Objective
Ensure the Airbnb clone database schema is in **Third Normal Form (3NF)** by identifying and removing redundancies, ensuring data dependencies are logical, and optimizing table structure.

---

## Ì¥ç Step-by-Step Normalization

### 1Ô∏è‚É£ First Normal Form (1NF)
**Rules:**
- Each table has a primary key.
- All fields contain atomic (indivisible) values.
- No repeating groups or arrays.

**Applied Fixes:**
- Removed multi-valued fields (e.g., user phone numbers).
- Ensured one row per entity.
- Split concatenated fields like `full_name` into `first_name` and `last_name`.

---

### 2Ô∏è‚É£ Second Normal Form (2NF)
**Rules:**
- Must be in 1NF.
- No partial dependency of any column on a composite primary key.

**Applied Fixes:**
- Created separate tables for entities with partial dependency:
  - Moved `user_id` and `property_id` references out of `booking` and into their own table rows.
  - Isolated `location` details from `property` into a separate `locations` table to reduce repetition.

---

### 3Ô∏è‚É£ Third Normal Form (3NF)
**Rules:**
- Must be in 2NF.
- No transitive dependency (non-key fields depend only on primary key).

**Applied Fixes:**
- Extracted dependent data:
  - Removed `city`, `state`, `country` from `property` and placed in `locations`.
  - Removed `card_type`, `billing_address` from `payments` and placed in `payment_methods`.
- Ensured all non-key attributes in a table depend only on the primary key.

---

## ‚úÖ Final Normalized Tables (Summary)

| Table Name        | Purpose                                    |
|-------------------|--------------------------------------------|
| `users`           | Stores user info (email, name, etc.)       |
| `properties`      | Listings details                           |
| `locations`       | City, state, country linked to properties  |
| `bookings`        | Tracks which user books which property     |
| `payments`        | Stores amount, status, and method reference|
| `payment_methods` | Stores card type and billing info          |
| `reviews`         | User reviews for a property                |
| `messages`        | Communication between hosts and guests     |

---

## Ì∑† Benefits of 3NF
- Removes data duplication.
- Prevents update anomalies.
- Improves data integrity and consistency.
- Ensures optimal use of storage and indexing.

---

## Ì≥Å File Information
- **File Name:** `normalization.md`
- **Repo:** `alx-airbnb-database`

