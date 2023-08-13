-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.


Insert Into Responses
  (CustomerID, PartySize)
Values (
        (Select CustomerID from Customers
        where Email = 'atapley2j@kinetecoinc.com'),
        4);

select * from Responses;
