select * from Patients;

-- Total number of patients:
select count(*) as total_no_of_patients
from hospital.Patients;

-- Number of patients by gender:
select Gender, count(*) as no_of_patient_by_gender from hospital.Patients
group by Gender;

