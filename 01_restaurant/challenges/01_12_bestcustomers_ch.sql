-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
select COUNT(Orders.orderID) as OrderCount,
 FirstName, LastName, Email from Customers
join Orders on Customers.CustomerID = Orders.CustomerID
Group by Orders.CustomerID
Order BY OrderCount DESC
LIMIT 15;