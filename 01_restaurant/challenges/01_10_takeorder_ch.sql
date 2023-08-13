-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
select CustomerID from Customers
where FirstName = 'Loretta' and LastName = 'Hundey';

select DishID, Name, Price from Dishes
where Name = 'House Salad' or Name = 'Mini Cheeseburgers' 
or Name = 'Tropical Blue Smoothie';

INSERT into Orders
(CustomerID, OrderDate) VALUES
(70,'2022-09-20 14:00:00');

SELECT * from Orders
where CustomerID = '70'
Order by OrderDate Desc;

INSERT into OrdersDishes
(OrderID, DishID) VALUES
(1001, 4),
(1001, 7),
(1001, 20);



SELECT * from OrdersDishes
where OrderID = '1001'
order by OrdersDishesID desc;

select SUM(Dishes.Price) as Total_Cost from Dishes
join OrdersDishes on Dishes.DishID = OrdersDishes.DishID
where OrdersDishes.OrderID = 1001;











