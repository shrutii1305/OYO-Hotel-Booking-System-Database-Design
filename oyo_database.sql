create database oyo_project;
drop database oyo_project;
create database if not exists oyo_project;
use oyo_project;
create table hotels (
					hotel_id char(7) primary key,
					hotel_name varchar(50),
					city varchar(20),
					rating float
                    );
insert into hotels values
(1, 'oyo townhouse', 'delhi', 4.2),
(2, 'oyo flagship', 'mumbai', 4.0),
(3, 'oyo premium', 'bangalore', 4.5);
select * from hotels;
create table rooms (
    room_id char(4) primary key,
    hotel_id char(7),
    room_type VARCHAR(15),
    price_per_night float,
    foreign key (hotel_id) references hotels(hotel_id)
    );
insert rooms values
(101, 1, 'deluxe', 2500),
(102, 1, 'standard', 1800),
(201, 2, 'deluxe', 3000),
(301, 3, 'suite', 4500);
select * from rooms;
create table customers (
    customer_id char(7) primary key,
    customer_name varchar(20),
    gender VARCHAR(1),
    city VARCHAR(20)
);
insert into customers values
(1, 'jyoti sharma', 'M', 'delhi'),
(2, 'neha sharma', 'F', 'mumbai'),
(3, 'dikshant sharma', 'M', 'pune');
select * from customers;
create table bookings (
    booking_id char(10) primary key,
    customer_id char(7),
    room_id char(4),
    check_in date,
    check_out date,
    booking_status varchar(10),
	foreign key (customer_id) references customers(customer_id),
    foreign key (room_id) references rooms(room_id)
    );
insert into bookings values
(1001, 1, 101, '2024-01-10', '2024-01-12', 'completed'),
(1002, 2, 201, '2024-02-05', '2024-02-07', 'completed'),
(1003, 3, 301, '2024-03-01', '2024-03-04', 'cancelled');
create table reviews (
    review_id char(5) primary key,
    booking_id char(7),
    rating float,
    comments varchar(50),
    foreign key (booking_id) references bookings(booking_id)
    );
insert into reviews values
(1, 1001, 5, 'Excellent stay'),
(2, 1002, 4, 'Good service');
select * from reviews;
create table payments (
    payment_id char(8) primary key,
    booking_id char(10),
    amount float,
    payment_mode varchar(10),
    payment_date date,
    foreign key (booking_id) references bookings(booking_id)
);
insert into payments values
('PAY001', '1001', 4500, 'upi', '2024-01-10'),
('PAY002', '1002', 6000, 'creditcard', '2024-02-05'),
('PAY003', '1003', 3200, 'debit card', '2024-03-12');
create table hotel_staff (
    staff_id char(3) primary key,
    hotel_id char(7),
    staff_name varchar(20),
    role varchar(20),
    salary float,
    foreign key (hotel_id) references hotels(hotel_id)
);
insert into hotel_staff values
(1, 1, 'ramesh kumar', 'Manager', 45000),
(2, 1, 'sita devi', 'Housekeeping', 18000),
(3, 2, 'anil mehta', 'Manager', 50000);
create table amenities (
    amenity_id char(2) primary key,
    amenity_name varchar(30)
);
insert into amenities values
(1, 'free wifi'),
(2, 'breakfast included'),
(3, 'swimming pool'),
(4, 'parking'),
(5, 'ac');
create table loyalty_program (
    customer_id char(7) primary key,
    loyalty_points float,
    membership_level varchar(15),
    foreign key (customer_id) references customers(customer_id)
);
show tables;
select * from hotels;
select * from rooms;
select * from bookings;
select * from payments;