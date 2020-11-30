SELECT FirstName, CustomerId, Country 
FROM Customer 
WHERE Country != "USA";

SELECT * 
FROM Customer 
WHERE Country = "Brazil";

SELECT Customer.FirstName || ' ' || Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Invoice 
INNER JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
WHERE BillingCountry = "Brazil";

SELECT * FROM Employee WHERE title LIKE "Sales%";

SELECT BillingCountry FROM Invoice;

SELECT *, Employee.FirstName, Employee.LastName 
FROM Invoice
INNER JOIN Employee ON Employee.EmployeeId=Invoice.InvoiceId
WHERE Employee.Title LIKE "Sales%";

SELECT Invoice.Total, Customer.FirstName || ' ' || Customer.LastName, Invoice.BillingCountry
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
INNER JOIN Employee ON Employee.EmployeeId=Customer.SupportRepId;
