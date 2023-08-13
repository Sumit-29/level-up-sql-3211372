-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
select Customers.FirstName, Customers.LastName, DishID, Name from Dishes
Join Customers On Customers.FavoriteDish = Dishes.DishID
where Customers.FirstName = 'Cleo' 
and Customers.LastName = 'Goldwater';
-- Earlier it was 14

SELECT DishID, Name, Description from Dishes
where Name = 'Quinoa Salmon Salad';
-- id = 9

UPDATE Customers
Set FavoriteDish = 9
where FirstName = 'Cleo' 
and LastName = 'Goldwater';