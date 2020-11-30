--1--
SELECT FirstName, CustomerId, Country 
FROM Customer 
WHERE Country != "USA";
--2--
SELECT * 
FROM Customer 
WHERE Country = "Brazil";
--3--
SELECT Customer.FirstName || ' ' || Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Invoice 
INNER JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
WHERE BillingCountry = "Brazil";
--4--
SELECT * FROM Employee WHERE title LIKE "Sales%";
--5--
SELECT BillingCountry FROM Invoice;
--6--
SELECT *, Employee.FirstName, Employee.LastName 
FROM Invoice
INNER JOIN Employee ON Employee.EmployeeId=Invoice.InvoiceId
WHERE Employee.Title LIKE "Sales%";
--7--
SELECT Invoice.Total, Customer.FirstName || ' ' || Customer.LastName, Invoice.BillingCountry
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
INNER JOIN Employee ON Employee.EmployeeId=Customer.SupportRepId;
--8--
SELECT InvoiceDate
FROM Invoice
WHERE InvoiceDate LIKE "2009%";

SELECT InvoiceDate
FROM Invoice
WHERE InvoiceDate LIKE "2011%"
--9--