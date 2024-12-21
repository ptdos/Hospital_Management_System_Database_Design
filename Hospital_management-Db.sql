-- Create the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(255)
);

-- Create the Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID)
);

-- Create the Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15)
);

-- Create the Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    DoctorID INT,
    PatientID INT,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Status VARCHAR(50),
    FOREIGN KEY (DoctorID) REFERENCES Doctors (DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID)
);

-- Insert dummy data into Departments
INSERT INTO
    Departments (DepartmentID, Name, Location)
VALUES (1, 'Cardiology', 'Building A'),
    (2, 'Neurology', 'Building B'),
    (3, 'Pediatrics', 'Building C'),
    (4, 'Oncology', 'Building D'),
    (
        5,
        'Orthopedics',
        'Building E'
    );

-- Insert dummy data into Doctors
INSERT INTO
    Doctors (
        DoctorID,
        Name,
        Specialization,
        Phone,
        DepartmentID
    )
VALUES (
        1,
        'Dr. Smith',
        'Cardiologist',
        '1234567890',
        1
    ),
    (
        2,
        'Dr. Johnson',
        'Neurologist',
        '1234567891',
        2
    ),
    (
        3,
        'Dr. Lee',
        'Pediatrician',
        '1234567892',
        3
    ),
    (
        4,
        'Dr. Brown',
        'Oncologist',
        '1234567893',
        4
    ),
    (
        5,
        'Dr. Green',
        'Orthopedic Surgeon',
        '1234567894',
        5
    );

-- Insert dummy data into Patients
INSERT INTO
    Patients (
        PatientID,
        Name,
        Age,
        Gender,
        Phone
    )
VALUES (
        1,
        'Alice',
        30,
        'Female',
        '9876543210'
    ),
    (
        2,
        'Bob',
        40,
        'Male',
        '9876543211'
    ),
    (
        3,
        'Charlie',
        25,
        'Male',
        '9876543212'
    ),
    (
        4,
        'Diana',
        35,
        'Female',
        '9876543213'
    ),
    (
        5,
        'Eve',
        28,
        'Female',
        '9876543214'
    );

-- Insert dummy data into Appointments
INSERT INTO
    Appointments (
        AppointmentID,
        DoctorID,
        PatientID,
        Date,
        Time,
        Status
    )
VALUES (
        1,
        1,
        1,
        '2024-12-22',
        '10:00:00',
        'Scheduled'
    ),
    (
        2,
        2,
        2,
        '2024-12-23',
        '11:00:00',
        'Scheduled'
    ),
    (
        3,
        3,
        3,
        '2024-12-24',
        '09:30:00',
        'Completed'
    ),
    (
        4,
        4,
        4,
        '2024-12-25',
        '10:30:00',
        'Canceled'
    ),
    (
        5,
        5,
        5,
        '2024-12-26',
        '14:00:00',
        'Scheduled'
    );