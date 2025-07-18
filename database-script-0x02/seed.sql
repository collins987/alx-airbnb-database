-- Insert Users
INSERT INTO users (first_name, last_name, email, phone_number, password_hash)
VALUES 
('Alice', 'Wanjiku', 'alice@example.com', '+254712345678', 'hashed_pwd1'),
('Brian', 'Otieno', 'brian@example.com', '+254733456789', 'hashed_pwd2'),
('Cynthia', 'Kariuki', 'cynthia@example.com', '+254701112233', 'hashed_pwd3');

-- Insert Locations
INSERT INTO locations (city, state, country)
VALUES
('Nairobi', 'Nairobi County', 'Kenya'),
('Mombasa', 'Mombasa County', 'Kenya'),
('Kisumu', 'Kisumu County', 'Kenya');

-- Insert Properties
INSERT INTO properties (user_id, location_id, title, description, price_per_night, max_guests)
VALUES
(1, 1, 'Modern Studio in Nairobi CBD', 'Cozy and modern studio apartment close to all amenities.', 3500.00, 2),
(2, 2, 'Beachfront Villa in Mombasa', 'Luxury villa right by the beach with 3 bedrooms.', 15000.00, 6),
(3, 3, 'Lakeview Cottage in Kisumu', 'Peaceful 2-bedroom cottage with lake views.', 7000.00, 4);

-- Insert Bookings
INSERT INTO bookings (user_id, property_id, check_in_date, check_out_date, total_price, status)
VALUES
(2, 1, '2025-08-01', '2025-08-03', 7000.00, 'confirmed'),
(3, 2, '2025-08-10', '2025-08-15', 75000.00, 'pending'),
(1, 3, '2025-08-05', '2025-08-07', 14000.00, 'confirmed');

-- Insert Payment Methods
INSERT INTO payment_methods (user_id, card_type, billing_address)
VALUES
(1, 'Visa', '123 Kenyatta Ave, Nairobi'),
(2, 'MasterCard', '456 Moi Ave, Mombasa'),
(3, 'American Express', '789 Oginga Odinga Rd, Kisumu');

-- Insert Payments
INSERT INTO payments (booking_id, payment_method_id, amount)
VALUES
(1, 1, 7000.00),
(2, 2, 75000.00),
(3, 3, 14000.00);

-- Insert Reviews
INSERT INTO reviews (user_id, property_id, rating, comment)
VALUES
(2, 1, 4, 'Great location and very clean. Would book again.'),
(3, 2, 5, 'Amazing beachfront experience. Host was very responsive.'),
(1, 3, 4, 'Lovely view and very peaceful, perfect for a weekend getaway.');

-- Insert Messages
INSERT INTO messages (sender_id, receiver_id, content)
VALUES
(1, 2, 'Hi Brian, is the Nairobi apartment available this weekend?'),
(2, 1, 'Hi Alice, yes it is available from Friday to Sunday.'),
(3, 2, 'Hey Brian, your Mombasa villa looks awesome! Is it near the beach?');
