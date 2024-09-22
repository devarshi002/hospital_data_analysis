SELECT * FROM billing;

-- Retrieve all billing records for a specific patient (e.g., Patient_ID = 10)

SELECT * 
FROM billing 
WHERE Patient_ID = 10;

-- Find the total amount billed for each patient
SELECT Patient_ID, sum(Amount) as total_amnt
FROM billing
GROUP BY Patient_ID;

-- List all bills that are unpaid
SELECT *
FROM billing
WHERE Payment_Status = "pending";

-- Get the total revenue generated from all billing records
SELECT sum(Amount) as total_amnt
FROM billing;

-- Find all patients who paid using a specific payment method (e.g., 'Credit Card')
SELECT * FROM billing
WHERE Payment_Method = "Credit";

-- Count the number of billing records based on payment status
SELECT Payment_Method, count(*) as total
FROM billing
GROUP BY Payment_Method;

-- Find the average amount billed for each payment method
SELECT Payment_Method, AVG(Amount) as avg_amount
FROM billing
GROUP BY Payment_Method;

-- List all billing records where the amount exceeds a specific value (e.g., 1000)
SELECT * FROM billing
WHERE Amount > 1000;

-- Retrieve the most recent billing record for each patient
SELECT * 
FROM Billing b1
WHERE Bill_ID = (
    SELECT MAX(b2.Bill_ID)
    FROM Billing b2
    WHERE b1.Patient_ID = b2.Patient_ID
);


-- Find the maximum, minimum, and average amount billed for all patients
SELECT MAX(Amount) AS Max_Billed, MIN(Amount) AS Min_Billed, AVG(Amount) AS Avg_Billed
FROM Billing;

-- Retrieve the top 5 highest billed patients
SELECT Patient_ID, SUM(Amount) AS Total_Billed
FROM Billing
GROUP BY Patient_ID
ORDER BY Total_Billed DESC
LIMIT 5;

