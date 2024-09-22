-- Retrieve all drugs from a specific manufacturer 
SELECT * FROM pharmacy
WHERE Manufacturer = 'pharmaco';

-- Find drugs that are out of stock
SELECT * from pharmacy
WHERE Stock_Quantity = 0;

-- List all drugs that are about to expire within the next 280 days
SELECT *
FROM pharmacy
WHERE Expiry_Date <= CURRENT_DATE() + INTERVAL 280 DAY;

-- Find the total stock of all drugs in the pharmacy

SELECT sum(Stock_Quantity) as total_q 
FROM pharmacy;

