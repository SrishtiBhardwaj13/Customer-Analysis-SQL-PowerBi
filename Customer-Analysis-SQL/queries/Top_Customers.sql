--Shows Top 5 Customers
SELECT c.FirstName || ' ' || c.LastName AS CustomerName, SUM(i.Total) AS TotalSpent 
FROM customers c
JOIN invoices i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId 
ORDER BY TotalSpent DESC
LIMIT 5;