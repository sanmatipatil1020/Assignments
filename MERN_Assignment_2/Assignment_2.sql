CREATE DATABASE mern_project;

 CREATE TABLE users (
  Email varchar(50) PRIMARY KEY,
  password varchar(100),
  Role  enum('Student','Admin'),
)

CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(100) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  fees INT DEFAULT NULL,
  start_date DATE DEFAULT NULL,
  end_date DATE DEFAULT NULL,
  video_expire_days INT DEFAULT NULL

);

CREATE TABLE students (
  reg_no INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) ,
  course_id INT ,
  mobile_no INT DEFAULT NULL,
  profile_pic BLOB,
  CONSTRAINT key_1 FOREIGN KEY (email) REFERENCES users (Email),
  CONSTRAINT key_2 FOREIGN KEY (course_id) REFERENCES courses (course_id)
);


CREATE TABLE videos (
  video_id INT NOT NULL,
  course_id INT,
  title VARCHAR(100),
  description VARCHAR(255),
  youtube_url VARCHAR(255),
  added_at DATE,
  FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

INSERT INTO users (Email, password, Role) VALUES ('KavitaMore@gmail.com', 'pass6', 'Student');
INSERT INTO users (Email, password, Role) VALUES ('MeeraKulkarni@gmail.com', 'pass8', 'Student');
INSERT INTO users (Email, password, Role) VALUES ('sanmatipatil@gmail.com', 'pass1', 'Admin');
INSERT INTO users (Email, password, Role) VALUES ('prachiyaragatti@gmail.com', 'pass3', 'Admin');
INSERT INTO users (Email, password, Role) VALUES ('pratikshapatil@gmail.com', 'pass4', 'Admin');
INSERT INTO users (Email, password, Role) VALUES ('RohitDesai@gmail.com', 'pass5', 'Student');
INSERT INTO users (Email, password, Role) VALUES ('sanikapatil@gmail.com', 'pass2', 'Admin');
INSERT INTO users (Email, password, Role) VALUES ('SanjayJadhav@gmail.com', 'pass9', 'Student');
INSERT INTO users (Email, password, Role) VALUES ('VikasGupta@gmail.com', 'pass7', 'Student');







  





INSERT INTO students (reg_no, name, email, course_id, mobile_no, profile_pic) 
VALUES (1, 'Kavita More', 'kavitamore@gmail.com', 1, 7788990011, NULL);

INSERT INTO students (reg_no, name, email, course_id, mobile_no, profile_pic) 
VALUES (2, 'Vikas Gupta', 'vikasgupta@gmail.com', 2, 9099887766, NULL);

INSERT INTO students (reg_no, name, email, course_id, mobile_no, profile_pic) 
VALUES (3, 'Meera Kulkarni', 'meerakulkarni@gmail.com', 2, 9000112233, NULL);

INSERT INTO students (reg_no, name, email, course_id, mobile_no, profile_pic) 
VALUES (4, 'Sanjay Jadhav', 'sanjayjadhav@gmail.com', 4, 8888777666, NULL);

INSERT INTO students (reg_no, name, email, course_id, mobile_no, profile_pic) 
VALUES (5, 'Sanjay Jadhav', 'rohitdesai@gmail.com', 6, 8888777666, NULL);


INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (1, 'Python Basics', 'Intro to Python', 5000, '2024-01-10', '2024-03-10', 60);

INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (2, 'Web Development', 'HTML CSS JS Full Course', 7000, '2024-05-01', '2024-07-01', 60);

INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (3, 'Java Full Stack', 'Core + Advanced Java', 10000, '2024-08-01', '2024-11-01', 90);

INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (4, 'Data Science', 'ML + AI + Statistics', 15000, '2025-10-01', '2026-02-01', 120);

INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (5, 'ReactJS', 'Frontend React Course', 8000, '2025-11-15', '2026-01-30', 60);

INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (6, 'NodeJS', 'Backend with Node', 7500, '2025-12-01', '2026-02-15', 45);

INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (7, 'SQL & DBMS', 'Database Complete Course', 4000, '2026-03-01', '2026-04-20', 40);

INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (8, 'Cyber Security', 'Ethical Hacking Basics', 9000, '2026-05-10', '2026-07-10', 50);

INSERT INTO courses (course_id, course_name, description, fees, start_date, end_date, video_expire_days) 
VALUES (9, 'Android Dev', 'Java + Kotlin', 12000, '2026-08-01', '2026-11-01', 90);



INSERT INTO videos (video_id, course_id, title, description, youtube_url, added_at) 
VALUES (1, 1, 'Python Intro', 'Basics of Python', 'https://youtu.be/py1', '2025-01-02');

INSERT INTO videos (video_id, course_id, title, description, youtube_url, added_at) 
VALUES (2, 1, 'Variables in Python', 'Learn Variables', 'https://youtu.be/py2', '2025-01-03');

INSERT INTO videos (video_id, course_id, title, description, youtube_url, added_at) 
VALUES (3, 2, 'HTML Basics', 'Introduction to HTML', 'https://youtu.be/web1', '2025-02-02');

INSERT INTO videos (video_id, course_id, title, description, youtube_url, added_at) 
VALUES (4, 3, 'Java OOP', 'Core OOP Concepts', 'https://youtu.be/jv1', '2025-01-20');

INSERT INTO videos (video_id, course_id, title, description, youtube_url, added_at) 
VALUES (5, 4, 'Machine Learning Intro', 'ML Basics', 'https://youtu.be/ml1', '2025-03-02');

INSERT INTO videos (video_id, course_id, title, description, youtube_url, added_at) 
VALUES (6, 5, 'React Components', 'Functional Components', 'https://youtu.be/rj1', '2025-04-05');

INSERT INTO videos (video_id, course_id, title, description, youtube_url, added_at) 
VALUES (7, 6, 'NodeJS Basics', 'Node Fundamentals', 'https://youtu.be/node1', '2025-01-25');

INSERT INTO videos (video_id, course_id, title, description, youtube_url, added_at) 
VALUES (8, 7, 'SQL Intro', 'Database Basics', 'https://youtu.be/sql1', '2025-02-16');


Q1. Write a Sql query that will fetch all upcoming courses.
SELECT *
FROM courses
WHERE start_date > CURDATE();

output:
+-----------+----------------+--------------------------+-------+------------+------------+-------------------+
| course_id | course_name    | description              | fees  | start_date | end_date   | video_expire_days |
+-----------+----------------+--------------------------+-------+------------+------------+-------------------+
|         7 | SQL & DBMS     | Database Complete Course |  4000 | 2026-03-01 | 2026-04-20 |                40 |
|         8 | Cyber Security | Ethical Hacking Basics   |  9000 | 2026-05-10 | 2026-07-10 |                50 |
|         9 | Android Dev    | Java + Kotlin            | 12000 | 2026-08-01 | 2026-11-01 |                90 |
+-----------+----------------+--------------------------+-------+------------+------------+-------------------+

Q2. Write a Sql query that will fetch all the registered students along with course name
SELECT s.reg_no, s.name, s.email, s.mobile_no,c.course_id,c.course_name
FROM students s 
JOIN courses c ON s.course_id =c.course_id;

output:
+--------+----------------+-------------------------+------------+-----------+-----------------+
| reg_no | name           | email                   | mobile_no  | course_id | course_name     |
+--------+----------------+-------------------------+------------+-----------+-----------------+
|      1 | Kavita More    | kavitamore@gmail.com    | 7788990011 |         1 | Python Basics   |
|      2 | Vikas Gupta    | vikasgupta@gmail.com    | 9099887766 |         2 | Web Development |
|      3 | Meera Kulkarni | meerakulkarni@gmail.com | 9000112233 |         2 | Web Development |
|      4 | Sanjay Jadhav  | sanjayjadhav@gmail.com  | 8888777666 |         4 | Data Science    |
|      5 | Rohit Desai    | rohitdesai@gmail.com    | 8888777666 |         6 | NodeJS          |
+--------+----------------+-------------------------+------------+-----------+-----------------+

Q3. Write an SQL query to fetch the complete details of a student (based on their email) along with the details of the course they are enrolled in.  

 SELECT s.*, c.*
FROM students s
JOIN courses c ON s.course_id = c.course_id
WHERE s.email = 'kavitamore@gmail.com';
 
output:
+--------+-------------+----------------------+-----------+------------+--------------------------+-----------+---------------+-----------------+------+------------+------------+-------------------+
| reg_no | name        | email                | course_id | mobile_no  | profile_pic              | course_id | course_name   | description     | fees | start_date | end_date   | video_expire_days |
+--------+-------------+----------------------+-----------+------------+--------------------------+-----------+---------------+-----------------+------+------------+------------+-------------------+
|      1 | Kavita More | kavitamore@gmail.com |         1 | 7788990011 | NULL                     |         1 | Python Basics | Intro to Python | 5000 | 2024-01-10 | 2024-03-10 |                60 |
+--------+-------------+----------------------+-----------+------------+--------------------------+-----------+---------------+-----------------+------+------------+------------+-------------------+

Q4. Write an SQL query to retrieve the course details and the list of non-expired videos for a specific student using their email address. A video is considered active (not expired) if its added_at date plus the course’s video_expire_days has not yet passed compared to the current date.
SELECT c.course_name, c.course_id,c.start_date,c.end_date,c.video_expire_days,v.added_at
FROM students s
JOIN courses c ON s.course_id = c.course_id
JOIN videos v ON v.course_id = c.course_id
WHERE s.email = 'kavitamore@gmail.com'
  AND DATE_ADD(v.added_at, INTERVAL c.video_expire_days DAY) >= CURDATE();


output:empty set



