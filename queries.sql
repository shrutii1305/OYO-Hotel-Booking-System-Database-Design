-- 1. List all hotels and their ratings
select hotel_name, city, rating from hotels; 
-- 2. List all rooms with hotel name and price
select r.room_id, r.room_type, r.price_per_night, h.hotel_name 
from rooms r
join hotels h on r.hotel_id = h.hotel_id;
-- 3. List all customers and city
select customer_name, city, gender from customers; 
-- 4. All bookings with customer, hotel, and room info
select b.booking_id, c.customer_name, h.hotel_name, r.room_type, b.check_in, b.check_out, b.booking_status 
from bookings b
join customers c on b.customer_id = c.customer_id
join rooms r on b.room_id = r.room_id
join hotels h on r.hotel_id = h.hotel_id;
-- 5. Count of bookings per hotel
select h.hotel_name, COUNT(b.booking_id) as total_bookings 
from bookings b
join rooms r on b.room_id = r.room_id
join hotels h on r.hotel_id = h.hotel_id
group by h.hotel_name;
-- 6. Bookings by status
select booking_status, COUNT(*) as count 
from bookings
group by booking_status;
-- 7. Total revenue per hotel
select h.hotel_name, SUM(p.amount) as total_revenue 
from payments p
join bookings b on p.booking_id = b.booking_id
join rooms r on b.room_id = r.room_id
join hotels h on r.hotel_id = h.hotel_id
group by h.hotel_name;
-- 8. Average payment amount per customer
select c.customer_name, avg(p.amount) as avg_payment 
from payments p
join bookings b on p.booking_id = b.booking_id
join customers c on b.customer_id = c.customer_id
group by c.customer_name;
-- 9. Payment mode distribution
select payment_mode, COUNT(*) as count 
from payments
group by payment_mode;
-- 10. Loyalty points per customer
select c.customer_name, l.loyalty_points, l.membership_level 
from loyalty_program l
join customers c on l.customer_id = c.customer_id;
-- 11. Top 5 customers by loyalty points
select c.customer_name, l.loyalty_points 
from loyalty_program l
join customers c on l.customer_id = c.customer_id
order by l.loyalty_points desc
limit 5;
 -- 12. Average hotel rating from reviews
select h.hotel_name, avg(rv.rating) as avg_rating
from reviews rv
join bookings b on rv.booking_id = b.booking_id
join rooms r on b.room_id = r.room_id
join hotels h on r.hotel_id = h.hotel_id
group by h.hotel_name;
-- 13. List reviews with customer and hotel info
select c.customer_name, h.hotel_name, rv.rating, rv.comments 
from reviews rv
join bookings b on rv.booking_id = b.booking_id
join customers c on b.customer_id = c.customer_id
join rooms r on b.room_id = r.room_id
join hotels h on r.hotel_id = h.hotel_id;
-- 14. Staff per hotel
select h.hotel_name, s.staff_name, s.role 
from hotel_staff s
join hotels h on s.hotel_id = h.hotel_id;
 -- 15. Total salary cost per hotel
select h.hotel_name, SUM(s.salary) as total_salary
from hotel_staff s
join hotels h on s.hotel_id = h.hotel_id
group by h.hotel_name;
-- 16. Bookings in a specific month
select COUNT(*) as bookings_in_jan 
from bookings
where month (check_in) = 1;
 -- 17. Top 3 most expensive rooms booked
select h.hotel_name, r.room_type, r.price_per_night
from bookings b
join rooms r on b.room_id = r.room_id
join hotels h on r.hotel_id = h.hotel_id
order by r.price_per_night desc
limit 3;
-- 18. Revenue per city
select h.city, SUM(p.amount) as total_revenue 
from payments p
join bookings b on p.booking_id = b.booking_id
join rooms r on b.room_id = r.room_id
join hotels h on r.hotel_id = h.hotel_id
group by h.city;