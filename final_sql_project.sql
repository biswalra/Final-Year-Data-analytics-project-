CREATE TABLE odisha_yatri (
    Booking_ID VARCHAR(20) PRIMARY KEY,
    Date TIMESTAMP,
    Time TIME,
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(20),
    Vehicle_Type VARCHAR(30),
    Pickup_Location VARCHAR(100),
    Drop_Location VARCHAR(100),
    V_TAT INT,
    C_TAT INT,
    Canceled_Rides_by_Customer VARCHAR(255),
    Canceled_Rides_by_Driver VARCHAR(255),
    Incomplete_Rides VARCHAR(10),
    Incomplete_Rides_Reason VARCHAR(255),
    Booking_Value DECIMAL(10,2),
    Payment_Method VARCHAR(30),
    Ride_Distance INT,
    Driver_Ratings DECIMAL(3,2),
    Customer_Rating DECIMAL(3,2)
);
ALTER TABLE ola RENAME TO odisha_yatri;

SELECT * FROM odisha_yatri LIMIT 20;
--1. Retrieve all successful bookings:
   CREATE
   SELECT * FROM odisha_yatri
   WHERE booking_status='Success';
--2. Find the average ride distance for each vehicle type.
    SELECT Vehicle_Type,AVG(Ride_Distance) AS 
	avg_distance FROM odisha_yatri
	GROUP BY vehicle_type;
--3. Get the total number of cancelled rides by customers:
    SELECT COUNT(*) FROM odisha_yatri
	WHERE booking_status='Canceled by Customer';

--4. List the top 5 customers who booked the highest number of rides:
    SELECT customer_id, COUNT(booking_id) AS total_ride 
	FROM odisha_yatri GROUP BY customer_id ORDER BY total_ride DESC 
	LIMIT 5;
--5. Get the number of rides cancelled by drivers due to personal and car-related issues.
      SELECT COUNT(*) FROM odisha_yatri
	  WHERE canceled_rides_by_driver='Personal & Car related issue'; 
--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
    SELECT MAX(Driver_Ratings) AS max_rating,MIN(Driver_Ratings) AS min_rating
	FROM odisha_yatri
	WHERE Vehicle_Type='Prime Sedan';
	SELECT * FROM odisha_yatri LIMIT 20;
--7. Retrieve all rides where payment was made using UPI.
     SELECT * FROM ola 
	 WHERE payment_method='UPI'
	-- LIMIT 20;
--8. Find the average customer rating per vehicle type.
      SELECT vehicle_type,AVG(customer_rating) AS avg_rating 
	  FROM odisha_yatri
	  GROUP BY vehicle_type;
--9. Calculate the total booking value of rides completed successfully.
    SELECT SUM(booking_value) AS total_rides_success_value
	FROM odisha_yatri
	WHERE booking_status='Success';
	
--10. List all incomplete rides along with the reason:
      SELECT booking_id,incomplete_rides_reason FROM odisha_yatri
	  WHERE incomplete_rides='Yes';

