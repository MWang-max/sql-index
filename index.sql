CREATE TABLE DBCustomers
SELECT
*
FROM Customers

-- clustered index
CREATE UNIQUE INDEX idx_DBCustomers_CustomerID
ON DBCustomers(CustomerID)

SELECT
*
FROM DBCustomers

SELECT 
*
FROM DBCustomers
WHERE LastName = 'Brown'

-- nonclustered index
CREATE INDEX idx_DBCustomers_LastName
ON DBCustomers(LastName)

CREATE INDEX idx_DBCustomers_FirstName
ON DBCustomers(FirstName)

SHOW INDEX FROM DBCustomers

-- composite index
SELECT
*
FROM DBCustomers
WHERE Country = 'USA' AND Score > 500

CREATE INDEX idx_DBCustomers_CountryScore
ON DBCustomers(Country, Score)