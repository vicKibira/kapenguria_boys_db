-- Create the kapengiria_school database if not exists
CREATE DATABASE IF NOT EXISTS kapengiria_school;

-- Connect to the kapengiria_school database
\c kapengiria_school;

-- students table
CREATE TABLE IF NOT EXISTS students(
     student_id SERIAL PRIMARY KEY,
     first_name VARCHAR(100),
     last_name VARCHAR(100),
     date_of_birth DATE,
     gender VARCHAR(30),
     address VARCHAR(100),
     contact_number VARCHAR(30),
     guardian_name VARCHAR(100),
     guardian_contact_number VARCHAR(100)
);

-- teachers table 
CREATE TABLE IF NOT EXISTS teachers(
     teachers_id SERIAL PRIMARY KEY,
     first_name VARCHAR(100),
     last_name VARCHAR(100),
     date_of_birth DATE,
     gender VARCHAR(10),
     address VARCHAR(100),
     contact_number VARCHAR(30),
     subjects_taught VARCHAR(50)
);

-- course table
CREATE TABLE IF NOT EXISTS course(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    course_description VARCHAR(100)
);
-- class table
CREATE TABLE IF NOT EXISTS class(
      class_id SERIAL PRIMARY KEY,
      class_name VARCHAR(100),
      teachers_id INT, -- Adding the teachers_id column
      FOREIGN KEY(teachers_id) REFERENCES teachers(teachers_id)
);

-- enrollments table 
CREATE TABLE IF NOT EXISTS enrollment(
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    class_id INT,
    FOREIGN KEY(student_id) REFERENCES students(student_id),
    FOREIGN KEY(class_id) REFERENCES class(class_id),
    academic_year VARCHAR(10)
);

-- grades table
CREATE TABLE IF NOT EXISTS grades(
    grade_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    class_id INT,
    grade VARCHAR(100),
    exam_date DATE,
    FOREIGN KEY(student_id) REFERENCES students(student_id),
    FOREIGN KEY(course_id) REFERENCES course(course_id),
    FOREIGN KEY(class_id) REFERENCES class(class_id)
);

-- attendance table
CREATE TABLE IF NOT EXISTS attendance(
    attendance_id SERIAL PRIMARY KEY,
    student_id INT,
    class_id INT,
    date DATE,
    attendance_status VARCHAR(100),
    FOREIGN KEY(student_id) REFERENCES students(student_id),
    FOREIGN KEY(class_id) REFERENCES class(class_id)
);

-- fees table
CREATE TABLE IF NOT EXISTS fee(
    fee_id SERIAL PRIMARY KEY,
    student_id INT,
    fee_type VARCHAR(100),
    amount DECIMAL(10,2),
    date_paid DATE,
    FOREIGN KEY(student_id) REFERENCES students(student_id)
);

-- Insert sample data into students table
INSERT INTO students (first_name, last_name, date_of_birth, gender, address, contact_number, guardian_name, guardian_contact_number)
VALUES
('John', 'Doe', '2005-05-15', 'Male', '123 Main St, City', '123-456-7890', 'Jane Doe', '987-654-3210'),
('Emily', 'Smith', '2006-08-22', 'Female', '456 Elm St, Town', '456-789-0123', 'Tom Smith', '789-012-3456'),
('Michael', 'Johnson', '2005-04-10', 'Male', '789 Oak St, Village', '789-012-3456', 'Sarah Johnson', '012-345-6789'),
('Sarah', 'Williams', '2006-11-30', 'Female', '321 Pine St, Country', '012-345-6789', 'Jack Williams', '234-567-8901');

-- Insert sample data into teachers table
INSERT INTO teachers (first_name, last_name, date_of_birth, gender, address, contact_number, subjects_taught)
VALUES
('David', 'Brown', '1978-09-05', 'Male', '111 Oak St, City', '111-222-3333', 'Mathematics, Physics'),
('Lisa', 'Wilson', '1985-03-12', 'Female', '222 Elm St, Town', '222-333-4444', 'English, History'),
('Robert', 'Martinez', '1980-11-20', 'Male', '333 Pine St, Village', '333-444-5555', 'Chemistry, Biology');

-- Insert sample data into course table
INSERT INTO course (course_name, course_description)
VALUES
('Mathematics', 'Algebra, Geometry, Calculus'),
('English', 'Literature, Grammar, Composition'),
('Physics', 'Mechanics, Thermodynamics, Electromagnetism'),
('History', 'World History, American History, European History'),
('Chemistry', 'Organic Chemistry, Inorganic Chemistry, Physical Chemistry'),
('Biology', 'Botany, Zoology, Genetics');

-- Insert sample data into class table
INSERT INTO class (class_name, teachers_id)
VALUES
('9th Grade', 1),
('10th Grade', 2),
('11th Grade', 3);

-- Insert sample data into enrollment table
INSERT INTO enrollment (student_id, class_id, academic_year)
VALUES
(1, 1, '2023-2024'),
(2, 2, '2023-2024'),
(3, 3, '2023-2024'),
(4, 1, '2023-2024'),
(1, 2, '2023-2024');

-- Insert sample data into grades table
INSERT INTO grades (student_id, course_id, class_id, grade, exam_date)
VALUES
(1, 1, 1, 'A', '2024-01-15'),
(2, 2, 2, 'B', '2024-01-20'),
(3, 3, 3, 'A', '2024-01-25'),
(4, 1, 1, 'B', '2024-01-15'),
(1, 2, 2, 'A', '2024-01-20');

-- Insert sample data into attendance table
INSERT INTO attendance (student_id, class_id, date, attendance_status)
VALUES
(1, 1, '2024-04-01', 'Present'),
(2, 2, '2024-04-01', 'Present'),
(3, 3, '2024-04-01', 'Present'),
(4, 1, '2024-04-01', 'Present'),
(1, 2, '2024-04-01', 'Present');

-- Insert sample data into fee table
INSERT INTO fee (student_id, fee_type, amount, date_paid)
VALUES
(1, 'Tuition Fee', 500.00, '2024-02-01'),
(2, 'Tuition Fee', 550.00, '2024-02-01'),
(3, 'Tuition Fee', 600.00, '2024-02-01'),
(4, 'Tuition Fee', 500.00, '2024-02-01');
