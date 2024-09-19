SELECT * FROM appointments;


-- Find all scheduled appointments

SELECT * FROM appointments
WHERE Status = "Scheduled";

-- Count the number of appointments for each doctor
SELECT Doctor_ID, count(*) as appointment 
FROM appointments
GROUP BY Doctor_ID;

--  List appointments that were completed
SELECT * FROM appointments
WHERE Status = "Completed";

-- Find appointments for a specific patient (e.g., Patient_ID = 5)
select * FROM appointments
WHERE Patient_ID = 5;

-- Retrieve the appointments of a doctor for a specific day
SELECT * FROM Appointments
WHERE DATE(Appointment_Date) = '2024-09-10';

-- Find the most recent scheduled appointment
SELECT * FROM appointments
WHERE Status = "Scheduled"
ORDER BY Appointment_Date DESC;

-- Find the number of appointments per status (Completed, Scheduled)
SELECT Status, count(*) as no_of_appointment FROM appointments
GROUP BY Status;

-- List patients who have appointments with a specific doctor (e.g., Doctor_ID = 3)
SELECT Patient_ID
FROM appointments
WHERE Doctor_ID = 3;

--  Find appointments with a specific symptom (e.g., 'Chest Pain')
SELECT * FROM appointments
WHERE Symptoms like "%Chest pain%";

-- Get the number of appointments each doctor completed
SELECT Doctor_ID, count(*) as no_of_appointment 
FROM appointments
WHERE Status = "Completed"
GROUP BY Doctor_ID;

 --List all upcoming appointments (scheduled after today's date)
SELECT * FROM appointments
WHERE Appointment_Date > CURRENT_DATE();


-- Find patients who have had multiple appointments
SELECT Patient_ID, count(*) as total_appointment
FROM appointments
GROUP BY Patient_ID
HAVING count(*) > 1;

-- Find all appointments with a specific diagnosis (e.g., 'Eczema')

SELECT * FROM appointments
WHERE Diagnosis = "Eczema";

-- Get the doctor with the most appointments
SELECT Doctor_ID, count(*) as most_appointment
FROM appointments
GROUP BY Doctor_ID
ORDER BY most_appointment DESC;
