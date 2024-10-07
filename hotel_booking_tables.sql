create table Hotels (
HotelId int primary key,
Cust_Name varchar(50),
Location varchar(50),
Rating decimal(2,1),
HDescription text,
ContactNo varchar(15));

create table Rooms (
RoomID int primary key,
HotelId int,
RoomNumber int,
RoomType varchar(50),
PricePerNight decimal(10,2),
AvailabilityStatus varchar(50),
foreign key (HotelId) references Hotels (HotelId));

create table Customers (
CustomerId int primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(50),
PhoneNumber varchar(15),
Address varchar(100));


create TABLE Bookings (
    BookingID INT PRIMARY KEY,
    CustomerID INT,
    RoomID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    TotalAmount DECIMAL(10, 2),
    BookingStatus VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    BookingID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

CREATE TABLE Amenities (
    AmenityID INT PRIMARY KEY,
    HotelID INT,
    AmenityType VARCHAR(100),
    Description TEXT,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);

CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    HotelID INT,
    CustomerID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    ReviewDate DATE,
    FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

