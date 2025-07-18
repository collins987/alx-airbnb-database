# Airbnb Database - Sample Data Seed

## Overview

This directory contains the SQL script `seed.sql` used to populate the Airbnb database with realistic sample data for testing and development.

## File Description

- **seed.sql**: SQL INSERT statements for all key tables in the schema, including:
  - `users`
  - `properties`
  - `bookings`
  - `payments`
  - `reviews`
  - `messages`

## Sample Data Highlights

- Multiple users with unique contact information.
- Properties associated with different owners.
- Bookings demonstrating real check-in and check-out periods.
- Payment entries matching each booking.
- Reviews and ratings to assess user experiences.
- Messages exchanged between guests and hosts.

## Usage

Run this script in your SQL database environment **after creating the schema** to populate it with data:

```bash
psql -U your_username -d airbnb_db -f seed.sql
