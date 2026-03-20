--Shows growth pattern of business
SELECT  STRFTIME('%Y-%m',InvoiceDate) as Month, SUM(Total) as Revenue
FROM invoices 
GROUP BY Month
ORDER BY Month;