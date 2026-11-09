# Tutoring-Company-Database

A MySQL database and PHP web interface for a fictional tutoring company. Course project for CSC 424 (Database Management) at Providence College.

## Overview
The database tracks students, tutors, subjects, rooms, courses, and appointments for a tutoring business that offers one-on-one sessions, online or in person. The PHP pages let a user add and view records through a browser.

## Tools
MySQL, PHP, HTML, phpMyAdmin (XAMPP)

## Database design
Eight tables: `students`, `tutors`, `subjects`, `rooms`, `room_equipment`, `tutor_subjects`, `courses`, and `appointments`. The `appointments` table links students, tutors, subjects, and rooms through foreign keys, and `tutor_subjects` handles the many-to-many relationship between tutors and subjects.

## Features
- Add a new student or tutor with a form
- View students, tutors, and appointments

![Main menu](docs/menu.png)

## How to run
1. Install XAMPP and start Apache and MySQL.
2. In phpMyAdmin, create a database named `tutoring` and import `sql/tutoring.sql`.
3. Copy the files in `php/` into `C:\xampp\htdocs`.
4. Open `http://localhost/tutor.php`.

## Notes
This is a course project and is not production-ready. It connects to MySQL as root and builds queries directly from form input. All names, phone numbers, and emails in the sample data are made up.
