-- What is the undiscounted subtotal for each Order (identified by OrderID).
select [Order Details].OrderID as OrderID, Sum(([Order Details].UnitPrice * [Order Details].Quantity)) as TotalPrice
from [Order Details]
group by [Order Details].OrderID

-- What products are currently for sale (not discontinued)?
 select *
 from Products
 where Products.Discontinued = 0
  
 
-- What is the cost after discount for each order?  Discounts should be applied as a percentage off.
select [Order Details].OrderID as OrderID,
		Sum(([Order Details].UnitPrice * [Order Details].Quantity) - ([Order Details].UnitPrice * [Order Details].Quantity * [Order Details].Discount))as TotalPrice
from [Order Details]
group by [Order Details].OrderID

-- I need a list of sales figures broken down by category name.  Include the total amount sold over all time and the total number of items sold.




-- What are our 10 most expensive products?





-- In which quarter in 1997 did we have the most revenue?




-- Which products have a price that is higher than average?