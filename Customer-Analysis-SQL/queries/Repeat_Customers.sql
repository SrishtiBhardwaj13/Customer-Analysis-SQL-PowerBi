--Shows loyal customers
SELECT CustomerId, COUNT(InvoiceId) AS TotalOrders
FROM invoices
GROUP BY CustomerId
HAVING TotalOrders > 1
ORDER BY TotalOrders DESC;