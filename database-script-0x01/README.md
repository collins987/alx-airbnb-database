# Airbnb Clone – Database Schema

This folder contains the SQL schema for the Airbnb clone project.

## Files
- `schema.sql`: Contains SQL `CREATE TABLE` statements, foreign key constraints, and indexes.
- `README.md`: This file.

## Tables Defined
- `users`: Stores user information.
- `locations`: Stores geographical info (city, country, etc.).
- `properties`: Stores listing details linked to users and locations.
- `bookings`: Tracks reservations.
- `payment_methods`: Stores saved billing methods.
- `payments`: Stores transactions.
- `reviews`: Ratings and comments from users.
- `messages`: Direct messages between users (hosts and guests).

## ⚙️ Features
- Proper normalization up to 3NF.
- Primary and foreign key constraints.
- Indexes for faster query performance on key fields.
- Data types selected for scalability and precision.

## 🛠️ How to Run
You can run the schema using PostgreSQL CLI:

```bash
psql -U your_user -d your_database -f schema.sql
