create database hospital;
use hospital;

CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Date_Of_Birth DATE,
    Gender VARCHAR(10),
    Contact_Details VARCHAR(255),
    Insurance_Number VARCHAR(50),
    Emergency_Contact VARCHAR(50),
    Admission_Date DATE,
    Discharge_Date DATE
);

INSERT INTO Patients (Patient_ID, First_Name, Last_Name, Date_Of_Birth, Gender, Contact_Details, Insurance_Number, Emergency_Contact, Admission_Date, Discharge_Date)
VALUES
    (1, 'John', 'Doe', '1990-01-01', 'Male', '123 Main St, City, State 12345', 'INS12345', 'Jane Doe', '2024-09-10', '2024-09-15'),
    (2, 'Jane', 'Smith', '1985-05-15', 'Female', '456 Elm St, City, State 56789', 'INS67890', 'John Smith', '2024-09-12', '2024-09-17'),
    (3, 'Michael', 'Johnson', '1975-08-20', 'Male', '789 Oak St, City, State 78901', 'INS98765', 'Sarah Johnson', '2024-09-13', '2024-09-20'),
    (4, 'Emily', 'Brown', '1995-03-25', 'Female', '101 Pine St, City, State 10111', 'INS54321', 'David Brown', '2024-09-15', '2024-09-22'),
    (5, 'David', 'Lee', '1980-11-10', 'Male', '202 Maple St, City, State 20222', 'INS32109', 'Sarah Lee', '2024-09-17', '2024-09-24'),
    (6, 'Olivia', 'Taylor', '2000-07-07', 'Female', '303 Willow St, City, State 30333', 'INS90123', 'James Taylor', '2024-09-18', '2024-09-25'),
    (7, 'Noah', 'Carter', '1975-04-20', 'Male', '404 Cedar St, City, State 40444', 'INS78901', 'Emma Carter', '2024-09-19', '2024-09-26'),
    (8, 'Ava', 'Miller', '1998-09-15', 'Female', '505 Elm St, City, State 50555', 'INS45678', 'Ethan Miller', '2024-09-20', '2024-09-27'),
    (9, 'Ethan', 'Davis', '2002-02-25', 'Male', '606 Oak St, City, State 60666', 'INS23456', 'Lily Davis', '2024-09-21', '2024-09-28'),
    (10, 'Sophia', 'Wilson', '1992-08-10', 'Female', '707 Pine St, City, State 70777', 'INS87654', 'Jacob Wilson', '2024-09-22', '2024-09-29'),
    (11, 'Jacob', 'Harris', '1988-05-20', 'Male', '808 Maple St, City, State 80888', 'INS34567', 'Olivia Harris', '2024-09-23', '2024-09-30'),
    (12, 'Mia', 'Jones', '1996-11-15', 'Female', '909 Willow St, City, State 90999', 'INS12345', 'Ethan Jones', '2024-09-24', '2024-10-01'),
    (13, 'William', 'Brown', '1978-07-05', 'Male', '1010 Cedar St, City, State 10101', 'INS67890', 'Emily Brown', '2024-09-25', '2024-10-02'),
    (14, 'Emma', 'Lee', '2004-03-20', 'Female', '2020 Elm St, City, State 20202', 'INS98765', 'David Lee', '2024-09-26', '2024-10-03'),
    (15, 'Noah', 'Smith', '1999-09-10', 'Male', '3030 Oak St, City, State 30303', 'INS54321', 'Olivia Smith', '2024-09-27', '2024-10-04'),
    (16, 'Ava', 'Carter', '2001-06-15', 'Female', '4040 Pine St, City, State 40404', 'INS32109', 'Noah Carter', '2024-09-28', '2024-10-05'),
    (17, 'Ethan', 'Miller', '2003-01-25', 'Male', '5050 Maple St, City, State 50505', 'INS90123', 'Emma Miller', '2024-09-29', '2024-10-06'),
    (18, 'Sophia', 'Davis', '2005-08-10', 'Female', '6060 Willow St, City, State 60606', 'INS78901', 'Ethan Davis', '2024-09-30', '2024-10-07'),
    (19, 'Jacob', 'Wilson', '2007-05-20', 'Male', '7070 Cedar St, City, State 70707', 'INS45678', 'Sophia Wilson', '2024-10-01', '2024-10-08'),
    (20, 'Mia', 'Harris', '2009-11-15', 'Female', '8080 Elm St, City, State 80808', 'INS23456', 'Jacob Harris', '2024-10-02', '2024-10-09');
    
    
    
    CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Specialty VARCHAR(50),
    Department_ID INT,
    Phone_Number VARCHAR(15),
    Email VARCHAR(50),
    Schedule VARCHAR(255)
);


INSERT INTO Doctors (Doctor_ID, First_Name, Last_Name, Specialty, Department_ID, Phone_Number, Email, Schedule)
VALUES
    (1, 'Abhishek', 'Sharma', 'Cardiology', 1, '123-456-7890', 'abhisheksh@hospital.com', 'Mon-Fri 9:00 AM - 5:00 PM'),
    (2, 'Aisha', 'Khan', 'General Surgery', 2, '987-654-3210', 'aishakhan@hospital.com', 'Tue-Thu 10:00 AM - 3:00 PM'),
    (3, 'Rajesh', 'Kumar', 'Pediatrics', 3, '555-1212', 'rajeshkumar@hospital.com', 'Mon-Fri 1:00 PM - 4:00 PM'),
    (4, 'Priya', 'Verma', 'Orthopedics', 4, '777-888-9999', 'priyaverma@hospital.com', 'Wed-Fri 2:00 PM - 6:00 PM'),
    (5, 'Vivek', 'Patel', 'Neurology', 5, '444-555-6666', 'vivekgpatel@hospital.com', 'Mon-Tue 8:00 AM - 12:00 PM'),
    (6, 'Anjali', 'Gupta', 'Dermatology', 1, '111-222-3333', 'anjali.gupta@hospital.com', 'Thu-Sat 1:00 PM - 5:00 PM'),
    (7, 'Rahul', 'Roy', 'Radiology', 2, '555-666-7777', 'rahulroy@hospital.com', 'Mon-Wed 10:00 AM - 2:00 PM'),
    (8, 'Meena', 'Menon', 'Psychiatry', 3, '222-333-4444', 'meenamenon@hospital.com', 'Tue-Fri 3:00 PM - 7:00 PM'),
    (9, 'Nikhil', 'Bhatt', 'Gynecology', 4, '111-222-3333', 'nikhilbhatt@hospital.com', 'Mon-Wed 9:00 AM - 1:00 PM'),
    (10, 'Ankita', 'Chauhan', 'Urology', 5, '555-666-7777', 'ankita.chauhan@hospital.com', 'Thu-Sat 2:00 PM - 6:00 PM');
    
    
    CREATE TABLE Appointments (
    Appointment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATETIME,
    Symptoms TEXT,
    Diagnosis TEXT,
    Status VARCHAR(20),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
);


INSERT INTO Appointments (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Symptoms, Diagnosis, Status)
VALUES
    (1, 1, 1, '2024-09-20 10:00:00', 'Fever, cough, fatigue', 'Respiratory infection', 'Scheduled'),
    (2, 2, 2, '2024-09-21 15:30:00', 'Abdominal pain, nausea', 'Gastroenteritis', 'Scheduled'),
    (3, 3, 3, '2024-09-22 12:00:00', 'Headache, dizziness', 'Migraine', 'Scheduled'),
    (4, 4, 4, '2024-09-23 09:30:00', 'Back pain, numbness', 'Herniated disc', 'Scheduled'),
    (5, 5, 5, '2024-09-24 14:00:00', 'Chest pain, shortness of breath', 'Heart attack', 'Completed'),
    (6, 6, 6, '2024-09-25 11:00:00', 'Rash, itching', 'Allergic reaction', 'Scheduled'),
    (7, 7, 7, '2024-09-26 16:30:00', 'Joint pain, swelling', 'Arthritis', 'Scheduled'),
    (8, 8, 8, '2024-09-27 13:00:00', 'Depression, anxiety', 'Mental health disorder', 'Scheduled'),
    (9, 9, 9, '2024-09-28 10:00:00', 'Urinary frequency, burning', 'Urinary tract infection', 'Completed'),
    (10, 10, 10, '2024-09-29 15:30:00', 'Skin rash, itching', 'Eczema', 'Scheduled'),
    (11, 11, 1, '2024-10-01 12:00:00', 'Fever, cough, fatigue', 'Respiratory infection', 'Scheduled'),
    (12, 12, 2, '2024-10-02 09:30:00', 'Abdominal pain, nausea', 'Gastroenteritis', 'Scheduled'),
    (13, 13, 3, '2024-10-03 14:00:00', 'Headache, dizziness', 'Migraine', 'Scheduled'),
    (14, 14, 4, '2024-10-04 11:00:00', 'Back pain, numbness', 'Herniated disc', 'Scheduled'),
    (15, 15, 5, '2024-10-05 16:30:00', 'Chest pain, shortness of breath', 'Heart attack', 'Scheduled'),
    (16, 16, 6, '2024-10-06 13:00:00', 'Rash, itching', 'Allergic reaction', 'Scheduled'),
    (17, 17, 7, '2024-10-07 10:00:00', 'Joint pain, swelling', 'Arthritis', 'Scheduled'),
    (18, 18, 8, '2024-10-08 15:30:00', 'Depression, anxiety', 'Mental health disorder', 'Scheduled'),
    (19, 19, 9, '2024-10-09 12:00:00', 'Urinary frequency, burning', 'Urinary tract infection', 'Scheduled'),
    (20, 20, 10, '2024-10-10 09:30:00', 'Skin rash, itching', 'Eczema', 'Scheduled');
    
    
    
    CREATE TABLE MedicalRecords (
    Record_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Doctor_ID INT,
    Visit_Date DATETIME,
    Diagnosis TEXT,
    Treatment TEXT,
    Prescription TEXT,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
);


INSERT INTO MedicalRecords (Record_ID, Patient_ID, Doctor_ID, Visit_Date, Diagnosis, Treatment, Prescription)
VALUES
    (1, 1, 1, '2024-09-15 10:00:00', 'Respiratory infection', 'Bed rest, fluids, over-the-counter medication', 'Acetaminophen, ibuprofen'),
    (2, 2, 2, '2024-09-16 15:30:00', 'Gastroenteritis', 'Hydration, electrolyte replacement', 'Oral rehydration solution'),
    (3, 3, 3, '2024-09-17 12:00:00', 'Migraine', 'Pain medication, rest', 'Triptan medication'),
    (4, 4, 4, '2024-09-18 09:30:00', 'Herniated disc', 'Physical therapy, pain medication', 'Muscle relaxant'),
    (5, 5, 5, '2024-09-19 14:00:00', 'Heart attack', 'Emergency treatment, medication', 'Beta-blocker, aspirin'),
    (6, 6, 6, '2024-09-20 11:00:00', 'Allergic reaction', 'Antihistamines, corticosteroids', 'Diphenhydramine, hydrocortisone cream'),
    (7, 7, 7, '2024-09-21 16:30:00', 'Arthritis', 'Pain management, physical therapy', 'Nonsteroidal anti-inflammatory drugs'),
    (8, 8, 8, '2024-09-22 13:00:00', 'Mental health disorder', 'Therapy, medication', 'Antidepressant medication'),
    (9, 9, 9, '2024-09-23 10:00:00', 'Urinary tract infection', 'Antibiotics', 'Fluoroquinolone antibiotic'),
    (10, 10, 10, '2024-09-24 15:30:00', 'Eczema', 'Topical corticosteroids, moisturizers', 'Hydrocortisone cream'),
    (11, 11, 1, '2024-09-25 12:00:00', 'Respiratory infection', 'Bed rest, fluids, over-the-counter medication', 'Acetaminophen, ibuprofen'),
    (12, 12, 2, '2024-09-26 09:30:00', 'Gastroenteritis', 'Hydration, electrolyte replacement', 'Oral rehydration solution'),
    (13, 13, 3, '2024-09-27 14:00:00', 'Migraine', 'Pain medication, rest', 'Triptan medication'),
    (14, 14, 4, '2024-09-28 11:00:00', 'Herniated disc', 'Physical therapy, pain medication', 'Muscle relaxant'),
    (15, 15, 5, '2024-09-29 16:30:00', 'Heart attack', 'Emergency treatment, medication', 'Beta-blocker, aspirin'),
    (16, 16, 6, '2024-09-30 13:00:00', 'Rash, itching', 'Antihistamines, corticosteroids', 'Diphenhydramine, hydrocortisone cream'),
    (17, 17, 7, '2024-10-01 10:00:00', 'Arthritis', 'Pain management, physical therapy', 'Nonsteroidal anti-inflammatory drugs'),
    (18, 18, 8, '2024-10-02 15:30:00', 'Mental health disorder', 'Therapy, medication', 'Antidepressant medication'),
    (19, 19, 9, '2024-10-03 12:00:00', 'Urinary tract infection', 'Antibiotics', 'Fluoroquinolone antibiotic'),
    (20, 20, 10, '2024-10-04 09:30:00', 'Eczema', 'Topical corticosteroids, moisturizers', 'Hydrocortisone cream');
    
    
    CREATE TABLE Billing (
    Bill_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Service_Description VARCHAR(255),
    Amount DECIMAL(10, 2),
    Payment_Method VARCHAR(20),
    Payment_Status VARCHAR(10),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

INSERT INTO Billing (Bill_ID, Patient_ID, Service_Description, Amount, Payment_Method, Payment_Status)
VALUES
    (1, 1, 'Consultation', 500.00, 'Credit', 'Paid'),
    (2, 2, 'X-ray', 1000.00, 'Insurance', 'Pending'),
    (3, 3, 'Lab tests', 800.00, 'Cash', 'Paid'),
    (4, 4, 'Surgery', 5000.00, 'Insurance', 'Pending'),
    (5, 5, 'Medication', 200.00, 'Credit', 'Paid'),
    (6, 6, 'Physical therapy', 1500.00, 'Insurance', 'Pending'),
    (7, 7, 'Consultation', 500.00, 'Cash', 'Paid'),
    (8, 8, 'X-ray', 1000.00, 'Insurance', 'Pending'),
    (9, 9, 'Lab tests', 800.00, 'Credit', 'Paid'),
    (10, 10, 'Surgery', 5000.00, 'Insurance', 'Pending'),
    (11, 11, 'Medication', 200.00, 'Cash', 'Paid'),
    (12, 12, 'Physical therapy', 1500.00, 'Insurance', 'Pending'),
    (13, 13, 'Consultation', 500.00, 'Credit', 'Paid'),
    (14, 14, 'X-ray', 1000.00, 'Insurance', 'Pending'),
    (15, 15, 'Lab tests', 800.00, 'Cash', 'Paid'),
    (16, 16, 'Surgery', 5000.00, 'Insurance', 'Pending'),
    (17, 17, 'Medication', 200.00, 'Credit', 'Paid'),
    (18, 18, 'Physical therapy', 1500.00, 'Insurance', 'Pending'),
    (19, 19, 'Consultation', 500.00, 'Cash', 'Paid'),
    (20, 20, 'X-ray', 1000.00, 'Insurance', 'Pending');
    
    
    
    CREATE TABLE Pharmacy (
    Drug_ID INT PRIMARY KEY AUTO_INCREMENT,
    Drug_Name VARCHAR(100) NOT NULL,
    Manufacturer VARCHAR(100),
    Expiry_Date DATE,
    Stock_Quantity INT
);


INSERT INTO Pharmacy (Drug_ID, Drug_Name, Manufacturer, Expiry_Date, Stock_Quantity)
VALUES
    (1, 'Paracetamol', 'PharmaCo', '2025-12-31', 100),
    (2, 'Ibuprofen', 'Meditech', '2025-09-30', 80),
    (3, 'Amoxicillin', 'GenX', '2025-06-30', 120),
    (4, 'Insulin', 'BioPharma', '2025-03-31', 50),
    (5, 'Aspirin', 'MedCorp', '2025-12-31', 150),
    (6, 'Vitamin C', 'NutriLife', '2026-03-31', 200),
    (7, 'Omeprazole', 'GastroMed', '2025-12-31', 90),
    (8, 'Metformin', 'Diabetics', '2026-06-30', 100),
    (9, 'Loratadine', 'AllergyCare', '2025-12-31', 70),
    (10, 'Levothyroxine', 'ThyroidMed', '2026-03-31', 60);
    
    
    CREATE TABLE Rooms (
    Room_ID INT PRIMARY KEY AUTO_INCREMENT,
    Room_Type VARCHAR(20),
    Bed_Count INT,
    Occupancy_Status VARCHAR(10)
);

INSERT INTO Rooms (Room_ID, Room_Type, Bed_Count, Occupancy_Status)
VALUES
    (1, 'ICU', 1, 'Occupied'),
    (2, 'ICU', 1, 'Vacant'),
    (3, 'General', 2, 'Occupied'),
    (4, 'General', 2, 'Vacant'),
    (5, 'Private', 1, 'Occupied'),
    (6, 'Private', 1, 'Vacant'),
    (7, 'ICU', 1, 'Occupied'),
    (8, 'General', 2, 'Vacant'),
    (9, 'Private', 1, 'Occupied'),
    (10, 'General', 2, 'Vacant');
    
    
    
    
    
    select * from Doctors;
