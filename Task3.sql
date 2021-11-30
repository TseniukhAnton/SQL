USE task3;
CREATE TABLE Employee
(Id int, Name varchar(255), Salary int, ManagerId int);
TRUNCATE TABLE employee;
INSERT INTO Employee
(Id, Name, Salary, ManagerId)
VALUES
(1, 'Joe', 70000, 3);

INSERT INTO Employee
(Id, Name, Salary, ManagerId)
VALUES
(2, 'Henry', 80000, 4);

INSERT INTO Employee
(Id, Name, Salary, ManagerId)
VALUES
(3, 'Sam', 60000, null);

INSERT INTO Employee
(Id, Name, Salary, ManagerId)
VALUES
(4, 'Max', 90000, null);

SELECT * FROM Employee;

SELECT 
    employee.Name AS 'Employee'
FROM
    Employee AS employee 
        JOIN
    Employee AS manager ON manager.Id = employee.ManagerId
WHERE
    employee.Salary > manager.Salary;











