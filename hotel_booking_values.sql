
-- insert values for hotels
INSERT INTO Hotels (HotelId, Cust_Name, Location, Rating, HDescription, ContactNo) VALUES
(1, 'The Grand Hotel', 'New York', 4.5, 'A luxurious hotel in the heart of the city.', '123-456-7890'),
(2, 'Seaside Resort', 'Miami', 4.8, 'Relax by the beach with stunning ocean views.', '234-567-8901'),
(3, 'Mountain Lodge', 'Aspen', 4.2, 'Cozy accommodations surrounded by mountains.', '345-678-9012'),
(4, 'Urban Stay', 'Chicago', 4.0, 'Modern hotel with a vibrant urban atmosphere.', '456-789-0123'),
(5, 'Country Inn', 'Nashville', 3.9, 'A charming inn with rustic decor and Southern hospitality.', '567-890-1234'),
(6, 'Business Suites', 'San Francisco', 4.6, 'Perfect for business travelers with all the amenities.', '678-901-2345'),
(7, 'Romantic Escape', 'Paris', 4.7, 'An intimate hotel ideal for couples.', '789-012-3456'),
(8, 'Budget Stay', 'Las Vegas', 3.5, 'Affordable hotel with essential amenities.', '890-123-4567'),
(9, 'Family Resort', 'Orlando', 4.3, 'Great for families with kids, featuring various activities.', '901-234-5678'),
(10, 'Historic Inn', 'Boston', 4.1, 'Experience the charm of Boston in this historic hotel.', '012-345-6789');

-- insert values for rooms
INSERT INTO Rooms (RoomID, HotelId, RoomNumber, RoomType, PricePerNight, AvailabilityStatus) VALUES
(1, 1, 101, 'Deluxe Suite', 250.00, 'Available'),
(2, 1, 102, 'Standard Room', 150.00, 'Booked'),
(3, 2, 201, 'Ocean View Room', 300.00, 'Available'),
(4, 2, 202, 'Standard Room', 180.00, 'Available'),
(5, 3, 301, 'Mountain View Room', 220.00, 'Booked'),
(6, 4, 401, 'Executive Room', 200.00, 'Available'),
(7, 5, 501, 'Double Room', 120.00, 'Available'),
(8, 6, 601, 'Business Suite', 275.00, 'Booked'),
(9, 7, 701, 'Honeymoon Suite', 350.00, 'Available'),
(10, 8, 801, 'Economy Room', 90.00, 'Available');

-- insert values for the customers
INSERT INTO Customers (CustomerId, FirstName, LastName, Email, PhoneNumber, Address) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Main St, Springfield, IL'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Elm St, Madison, WI'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '345-678-9012', '789 Oak St, Austin, TX'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '456-789-0123', '135 Pine St, Seattle, WA'),
(5, 'David', 'Wilson', 'david.wilson@example.com', '567-890-1234', '246 Maple St, Boston, MA'),
(6, 'Sophia', 'Taylor', 'sophia.taylor@example.com', '678-901-2345', '357 Birch St, Denver, CO'),
(7, 'James', 'Brown', 'james.brown@example.com', '789-012-3456', '468 Cedar St, San Francisco, CA'),
(8, 'Olivia', 'Martinez', 'olivia.martinez@example.com', '890-123-4567', '579 Walnut St, Miami, FL'),
(9, 'William', 'Garcia', 'william.garcia@example.com', '901-234-5678', '680 Spruce St, Orlando, FL'),
(10, 'Ava', 'Rodriguez', 'ava.rodriguez@example.com', '012-345-6789', '791 Fir St, New York, NY');

-- insert values for bookings
INSERT INTO Bookings (BookingID, CustomerID, RoomID, CheckInDate, CheckOutDate, TotalAmount, BookingStatus) VALUES
(1, 1, 1, '2024-10-01', '2024-10-05', 1000.00, 'Confirmed'),
(2, 2, 3, '2024-10-10', '2024-10-15', 1500.00, 'Confirmed'),
(3, 3, 5, '2024-10-12', '2024-10-14', 240.00, 'Cancelled'),
(4, 4, 4, '2024-10-20', '2024-10-25', 1000.00, 'Confirmed'),
(5, 5, 6, '2024-10-05', '2024-10-08', 600.00, 'Checked In'),
(6, 6, 7, '2024-10-15', '2024-10-18', 1050.00, 'Confirmed'),
(7, 7, 8, '2024-10-22', '2024-10-27', 450.00, 'Checked In'),
(8, 8, 2, '2024-10-10', '2024-10-12', 360.00, 'Confirmed'),
(9, 9, 9, '2024-10-01', '2024-10-05', 1200.00, 'Confirmed'),
(10, 10, 10, '2024-10-05', '2024-10-10', 450.00, 'Confirmed');

-- insert values for the payments
INSERT INTO Payments (PaymentID, BookingID, PaymentDate, Amount, PaymentMethod, PaymentStatus) VALUES
(1, 1, '2024-09-30', 1000.00, 'Credit Card', 'Completed'),
(2, 2, '2024-10-05', 1500.00, 'PayPal', 'Completed'),
(3, 3, '2024-10-10', 240.00, 'Credit Card', 'Refunded'),
(4, 4, '2024-10-19', 1000.00, 'Debit Card', 'Completed'),
(5, 5, '2024-10-04', 600.00, 'Bank Transfer', 'Completed'),
(6, 6, '2024-10-14', 1050.00, 'Credit Card', 'Completed'),
(7, 7, '2024-10-20', 450.00, 'Credit Card', 'Pending'),
(8, 8, '2024-10-09', 360.00, 'PayPal', 'Completed'),
(9, 9, '2024-09-30', 1200.00, 'Debit Card', 'Completed'),
(10, 10, '2024-10-01', 450.00, 'Credit Card', 'Completed');

-- insert values for the amenities
INSERT INTO Amenities (AmenityID, HotelID, AmenityType, Description) VALUES
(1, 1, 'Free Wi-Fi', 'Complimentary high-speed internet access throughout the hotel.'),
(2, 1, 'Swimming Pool', 'A heated indoor pool available year-round.'),
(3, 2, 'Beach Access', 'Direct access to the private beach for hotel guests.'),
(4, 2, 'Spa Services', 'On-site spa offering a range of treatments and massages.'),
(5, 3, 'Ski Equipment Rental', 'Ski gear available for rent at discounted rates.'),
(6, 4, 'Fitness Center', 'Fully equipped gym with modern exercise equipment.'),
(7, 5, 'Breakfast Included', 'Complimentary breakfast served daily in the dining area.'),
(8, 6, 'Business Center', '24-hour access to computers, printers, and meeting rooms.'),
(9, 7, 'Room Service', '24/7 room service available for all guests.'),
(10, 8, 'Parking', 'On-site parking available for guests at no extra charge.');

-- insert values for the reviews
INSERT INTO Reviews (ReviewID, HotelID, CustomerID, Rating, Comment, ReviewDate) VALUES
(1, 1, 1, 5, 'Absolutely fantastic experience! Highly recommend.', '2024-10-02'),
(2, 2, 2, 4, 'Great location but the service could be better.', '2024-10-11'),
(3, 3, 3, 3, 'Nice lodge, but the rooms were a bit outdated.', '2024-10-13'),
(4, 4, 4, 5, 'Loved the modern amenities and the city view!', '2024-10-21'),
(5, 5, 5, 4, 'Charming inn with friendly staff.', '2024-10-06'),
(6, 6, 6, 5, 'Perfect for business travel! Very convenient.', '2024-10-16'),
(7, 7, 7, 4, 'Lovely atmosphere, but the food was overpriced.', '2024-10-23'),
(8, 8, 8, 3, 'It was okay for the price, nothing special.', '2024-10-10'),
(9, 9, 9, 5, 'Fantastic family resort! Kids loved it.', '2024-10-03'),
(10, 10, 10, 4, 'Historic inn with great character and charm.', '2024-10-02');



