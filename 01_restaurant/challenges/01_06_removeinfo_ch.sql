-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
Select * 
from customers
where FirstName = 'Norby';

SELECT * 
from Reservations
where CustomerID ='64';

Select * 
from Reservations 
Join Customers on Reservations.CustomerID = Customers.CustomerID
Where Customers.FirstName = 'Norby' and Reservations.Date > '2022-07-24';

-- Two ways to do this 

DELETE From Reservations where ReservationID = 2000;

-- or 
Update Reservations set Date = NULL where ReservationID = 2000;