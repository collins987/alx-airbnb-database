
-- Create partitioned version of Booking table based on start_date
CREATE TABLE Booking_Partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    payment_id INT,
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES User(user_id),
    CONSTRAINT fk_property FOREIGN KEY(property_id) REFERENCES Property(property_id),
    CONSTRAINT fk_payment FOREIGN KEY(payment_id) REFERENCES Payment(payment_id)
) PARTITION BY RANGE (start_date);

-- Create partitions for different year ranges
CREATE TABLE Booking_2023 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Insert data for testing performance (Example)
-- INSERT INTO Booking_Partitioned (...) VALUES (...);

-- Query to test performance
-- EXPLAIN ANALYZE SELECT * FROM Booking_Partitioned WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
