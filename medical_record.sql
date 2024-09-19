SELECT * FROM medicalrecords;

-- Get all medical records for a specific patient (e.g., Patient_ID = 5)
SELECT * FROM medicalrecords
WHERE Patient_ID = 5;

--Find the total number of medical records per doctor
SELECT Doctor_ID, count(*) as total_medical
FROM medicalrecords
GROUP BY Doctor_ID;

-- Retrieve medical records with a specific diagnosis (e.g., 'heart attack')
SELECT *
FROM medicalrecords
WHERE Diagnosis = "Heart attack";

-- Find the most recent medical record for each patient
