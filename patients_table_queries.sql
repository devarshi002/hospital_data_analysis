select * from Patients;

-- Total number of patients:
select count(*) as total_no_of_patients
from hospital.Patients;

-- Number of patients by gender:
select Gender, count(*) as no_of_patient_by_gender from hospital.Patients
group by Gender;

-- Age distribution:
SELECT AVG(YEAR(CURDATE()) - YEAR(Date_Of_Birth)) AS Average_Age,
       COUNT(*) AS Patient_Count
FROM Patients;

-- Distribution of patients by birth month:
select monthname(Date_Of_Birth) as birth_month, count(*) as patient_count 
from Patients
group by birth_month
order by patient_count desc;


-- Number of patients admitted per month:

select monthname(Admission_Date) as admission, count(*) as patient_count
from Patients
group by admission
order by patient_count desc;

-- Average length of stay:
select avg(datediff(Discharge_Date, Admission_Date)) as avg_stay 
from patients
WHERE Discharge_Date IS NOT NULL;

-- Patients still admitted:
select count(*) as patient_still_admitted 
from patients
where Discharge_Date is null;

-- Distribution of insurance providers:
select Insurance_Number, count(*) as no_of_patients
from patients
group by Insurance_Number;

-- Percentage of patients with insurance:
select (count(*) / (select count(*) from patients)) * 100 as percentage_with_insurance 
from patients
where Insurance_Number is not null;


-- Distribution of emergency contact relationships:
select Emergency_Contact, count(*) as contact_count
from patients
group by Emergency_Contact;




select * from Patients;