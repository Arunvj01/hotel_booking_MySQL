-- List All Customers Who Have Made Bookings with a Specific Status
SELECT DISTINCT c.CustomerID, c.FirstName, c.LastName
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
WHERE b.BookingStatus = 'Confirmed';

-- Count the Number of Reviews for Each Hotel
SELECT HotelID, COUNT(*) AS ReviewCount
FROM Reviews
GROUP BY HotelID;

-- Find the Average Rating for Each Hotel
SELECT HotelID, AVG(Rating) AS AverageRating
FROM Reviews
GROUP BY HotelID;

--  Get All Payments Made for a Specific Booking
SELECT PaymentID, Amount, PaymentMethod, PaymentStatus
FROM Payments
WHERE BookingID = 3;

-- List All Rooms with a Price Above a Certain amount
SELECT RoomID, RoomNumber, RoomType, PricePerNight
FROM Rooms
WHERE PricePerNight > 200.00;

-- Find the Most Recent Review for Each Hotel
SELECT r.HotelID, r.Comment, r.ReviewDate
FROM Reviews r
JOIN (
    SELECT HotelID, MAX(ReviewDate) AS LatestReviewDate
    FROM Reviews
    GROUP BY HotelID
) latest ON r.HotelID = latest.HotelID AND r.ReviewDate = latest.LatestReviewDate;
















