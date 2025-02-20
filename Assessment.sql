CREATE TABLE t_atten_det(
Atten_id INT IDENTITY(1001,1),
Emp_id INT,
FOREIGN KEY (Emp_id) REFERENCES t_emp(Emp_id), 
Activity_id INT,
FOREIGN KEY (Activity_id) REFERENCES t_activity(Activity_id),
Atten_start_datetime DATETIME,
Atten_end_hrs INT
);
INSERT INTO t_atten_det(Emp_id, Activity_id, Atten_start_datetime, Atten_end_hrs)
VALUES
(1001, 5, '2/13/2011 10:00:00', 2),
(1001, 1, '1/14/2011 10:00:00', 3),
(1001, 3, '1/14/2011 13:00:00', 5),
(1003, 5, '2/16/2011 10:00:00', 8),
(1003, 5, '2/17/2011 10:00:00', 8),
(1003, 5, '2/19/2011 10:00:00', 7);

SELECT * FROM t_atten_det

CREATE TABLE t_salary(
Salary_id INT,
Emp_id INT,
Changed_date DATE,
New_Salary DECIMAL(10, 2)
);

INSERT INTO t_salary (salary_id, Emp_ID, Changed_date, New_Salary)
VALUES
(1001, 1003, '2/16/2011', 20000.00),
(1002, 1003, '1/05/2011', 25000.00),
(1003, 1001, '2/16/2011', 26000.00);


DROP TABLE t_emp
DROP TABLE t_salary
DROP TABLE t_activity
DROP TABLE t_atten_det

CREATE TABLE t_emp(
Emp_id INT IDENTITY(1001, 2) PRIMARY KEY NOT NULL,
Emp_Code VARCHAR(255),
Emp_f_name VARCHAR(255) NOT NULL,
Emp_m_name VARCHAR(255),
Emp_l_name VARCHAR(255),
EMP_DOB DATE,-- INT CHECK DATEDIFF(Emp_DOB, GETDATE())>=18,
EMP_DOJ DATE NOT NULL
);



INSERT INTO t_emp (Emp_Code, Emp_f_name, Emp_l_name, Emp_DOB, EMP_DOJ)
VALUES
('OPT20110105', 'Manmohan', 'Singh', '02/10/1983', '05/25/2010');

INSERT INTO t_emp (Emp_Code, Emp_f_name, Emp_m_name, Emp_l_name, Emp_DOB, EMP_DOJ)
VALUES
('OPT20100915', 'Alfred', 'Joseph', 'Lawrence', '02/28/1988', '02/28/1988');

CREATE TABLE t_activity(
Activity_id INT PRIMARY KEY,
Activity_description VARCHAR(255)
);

INSERT INTO t_activity(Activity_id, Activity_description)
VALUES 
(1, 'Code Analysis'),
(2, 'Lunch'),
(3, 'Coding'),
(4, 'Knowledge Transition'),
(5, 'Database');



SELECT * FROM t_atten_det;
SELECT * FROM t_salary;
SELECT * FROM t_emp;
SELECT * FROM t_activity;

--RANK() OVER(PARTITION BY E.Emp_id ORDER BY S.New_Salary DESC) AS Rank



--Q1

SELECT CONCAT(Emp_f_name,' ', Emp_m_name,' ', Emp_l_name) AS Full_Name, E.EMP_DOB
FROM t_emp E
WHERE (DAY(Emp_DOB)=28 AND MONTH(Emp_DOB)=2) OR (DAY(Emp_DOB)=31 AND MONTH(Emp_DOB) IN (1,3,5,7,8,10,11)) OR (DAY(Emp_DOB)=30 AND MONTH(Emp_DOB) IN (4,6,9,11));


--Q2.Display full name of employees who got increment in salary, previous salary, current salary, total worked hours, last worked activity and hours worked in that
CREATE TABLE t_atten_det(
Atten_id INT IDENTITY(1001,1),
Emp_id INT,
FOREIGN KEY (Emp_id) REFERENCES t_emp(Emp_id), 
Activity_id INT,
FOREIGN KEY (Activity_id) REFERENCES t_activity(Activity_id),
Atten_start_datetime DATETIME,
Atten_end_hrs INT
);
INSERT INTO t_atten_det(Emp_id, Activity_id, Atten_start_datetime, Atten_end_hrs)
VALUES
(1001, 5, '2/13/2011 10:00:00', 2),
(1001, 1, '1/14/2011 10:00:00', 3),
(1001, 3, '1/14/2011 13:00:00', 5),
(1003, 5, '2/16/2011 10:00:00', 8),
(1003, 5, '2/17/2011 10:00:00', 8),
(1003, 5, '2/19/2011 10:00:00', 7);

SELECT * FROM t_atten_det

CREATE TABLE t_salary(
Salary_id INT,
Emp_id INT,
Changed_date DATE,
New_Salary DECIMAL(10, 2)
);

INSERT INTO t_salary (salary_id, Emp_ID, Changed_date, New_Salary)
VALUES
(1001, 1003, '2/16/2011', 20000.00),
(1002, 1003, '1/05/2011', 25000.00),
(1003, 1001, '2/16/2011', 26000.00);


DROP TABLE t_emp
DROP TABLE t_salary
DROP TABLE t_activity
DROP TABLE t_atten_det

CREATE TABLE t_emp(
Emp_id INT IDENTITY(1001, 2) PRIMARY KEY NOT NULL,
Emp_Code VARCHAR(255),
Emp_f_name VARCHAR(255) NOT NULL,
Emp_m_name VARCHAR(255),
Emp_l_name VARCHAR(255),
EMP_DOB DATE,-- INT CHECK DATEDIFF(Emp_DOB, GETDATE())>=18,
EMP_DOJ DATE NOT NULL
);



INSERT INTO t_emp (Emp_Code, Emp_f_name, Emp_l_name, Emp_DOB, EMP_DOJ)
VALUES
('OPT20110105', 'Manmohan', 'Singh', '02/10/1983', '05/25/2010');

INSERT INTO t_emp (Emp_Code, Emp_f_name, Emp_m_name, Emp_l_name, Emp_DOB, EMP_DOJ)
VALUES
('OPT20100915', 'Alfred', 'Joseph', 'Lawrence', '02/28/1988', '02/28/1988');

CREATE TABLE t_activity(
Activity_id INT PRIMARY KEY,
Activity_description VARCHAR(255)
);

INSERT INTO t_activity(Activity_id, Activity_description)
VALUES 
(1, 'Code Analysis'),
(2, 'Lunch'),
(3, 'Coding'),
(4, 'Knowledge Transition'),
(5, 'Database');



SELECT * FROM t_atten_det;
SELECT * FROM t_salary;
SELECT * FROM t_emp;
SELECT * FROM t_activity;

--RANK() OVER(PARTITION BY E.Emp_id ORDER BY S.New_Salary DESC) AS Rank



--Q1

SELECT CONCAT(Emp_f_name,' ', Emp_m_name,' ', Emp_l_name) AS Full_Name, E.EMP_DOB
FROM t_emp E
WHERE (DAY(Emp_DOB)=28 AND MONTH(Emp_DOB)=2) OR (DAY(Emp_DOB)=31 AND MONTH(Emp_DOB) IN (1,3,5,7,8,10,11)) OR (DAY(Emp_DOB)=30 AND MONTH(Emp_DOB) IN (4,6,9,11));


--Q2.Display full name of employees who got increment in salary, previous salary, current salary, total worked hours, last worked activity and hours worked in that


WITH SAL AS (
    SELECT  E.Emp_id, ROW_NUMBER() OVER(PARTITION BY E.Emp_id ORDER BY S.Changed_date DESC) AS ROWN, S.New_Salary, LAG(S.New_Salary) OVER(PARTITION BY E.Emp_id ORDER BY S.Changed_date DESC) AS Previous_Salary
    FROM t_emp E
    JOIN t_salary S ON E.Emp_id=S.Emp_id
),
ACTIVITY AS (
    SELECT E.Emp_id, CONCAT(E.Emp_f_name, ' ', E.Emp_m_name, ' ', E.Emp_l_name) AS Full_Name,/* SUM(Att.Atten_end_hrs) OVER(PARTITION BY E.Emp_id) AS Total_Worked_Hours,*/ A.Activity_description AS Last_Activity,Att.Atten_end_hrs AS Last_Activity_Hours
    FROM t_emp E
    JOIN t_atten_det Att ON E.Emp_id=Att.Emp_id
    JOIN t_activity A ON Att.Activity_id=A.Activity_id
    WHERE Att.Atten_start_datetime=(SELECT MAX(Atten_start_datetime) FROM t_atten_det WHERE Emp_id=E.Emp_id)
    GROUP BY E.Emp_id, E.Emp_f_name, E.Emp_m_name, E.Emp_l_name, A.Activity_description, Att.Atten_end_hrs
),
TOTAL_HOURS AS(
    SELECT Emp_id,SUM(Atten_end_hrs) AS Total_Worked_Hours
    FROM t_atten_det
    GROUP BY Emp_id
)
SELECT  S.Emp_id, A.Full_Name, S.Previous_Salary, S.New_Salary, T.Total_Worked_Hours, A.Last_Activity, A.Last_Activity_Hours
FROM SAL S
JOIN ACTIVITY A ON S.Emp_id = A.Emp_id
JOIN TOTAL_HOURS T ON S.Emp_id = T.Emp_id
WHERE S.Previous_Salary<S.New_Salary
ORDER BY A.Full_Name;
