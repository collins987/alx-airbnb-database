# Task 6: Monitor and Refine Database Performance

## Objective:
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## 1. Tools Used:
- `EXPLAIN ANALYZE` — PostgreSQL
- `SHOW PROFILE` — MySQL (used for query diagnostics)
- Query execution times tracked manually

---

## 2. Frequently Used Queries Analyzed:

### Query 1: Retrieve bookings with user and property details
```sql
EXPLAIN ANALYZE
SELECT b.id, u.name AS user_name, p.name AS property_name, b.start_date, b.end_date
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
WHERE b.start_date BETWEEN '2025-01-01' AND '2025-12-31';
