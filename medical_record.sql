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

--  Find the most recent visit date for each patient
SELECT Patient_ID, max(Visit_Date) as recent_visit
FROM medicalrecords
GROUP BY Patient_ID
ORDER BY recent_visit DESC;


-- Retrieve all records of patients treated by a specific doctor (e.g., Doctor_ID = 3)
SELECT * FROM medicalrecords WHERE Doctor_ID = 3;

-- Count the number of records for each diagnosis
SELECT Diagnosis, count(*) as no_of_records
FROM medicalrecords
GROUP BY Diagnosis;

--List all prescriptions given for a specific treatment (e.g., 'Physical Therapy')

SELECT * FROM medicalrecords
WHERE Treatment like "%Physical%";

