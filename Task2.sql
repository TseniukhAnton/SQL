USE task2;

CREATE TABLE Employee
(Id int unique auto_increment,
Salary int);

TRUNCATE TABLE Employee;

INSERT INTO Employee
(Id, Salary)
VALUES
(1, 100);

INSERT INTO Employee
(Id, Salary)
VALUES
(2, 200);

INSERT INTO Employee
(Id, Salary)
VALUES
(3, 300);

SELECT 
    MAX(Salary)
FROM
    Employee
WHERE
    Salary < (SELECT 
            MAX(Salary)
        FROM
            Employee);










