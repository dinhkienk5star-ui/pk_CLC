-- Database Schema for Clinic Management System
CREATE TABLE patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dob DATE,
    contact_number VARCHAR(15)
);

CREATE TABLE appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    appointment_date DATETIME,
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(id)
);