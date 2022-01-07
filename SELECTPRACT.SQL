--SQL lOGICAL QUESTIONS--

--1.Write a Oracle SQL query to get the details of all employees and also display the specific information of all employees--
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,EMAIL,JOB_ID FROM EMPLOYEES;

--2. Write a Oracle SQL command to display the employee name, job and annual salary for all employees--
SELECT FIRST_NAME,LAST_NAME,CONCAT(FIRST_NAME,LAST_NAME) AS NAME,JOB_ID,SALARY*12 
FROM EMPLOYEES;

--3. Write a Oracle SQL query to get the total number of employees working in the company.--
SELECT COUNT(*) FROM EMPLOYEES;

--4. Write a Oracle SQL query to get the total salary being paid to all employees.--
SELECT SUM(SALARY) FROM EMPLOYEES;

--5. Write a Oracle SQL query to get the maximum and minimum salary from the employees table.--
SELECT MAX(SALARY),MIN(SALARY) FROM EMPLOYEES;

--6. Write a Oracle SQL query to display the name of the employees in order to earning from lowest salary to highest.--
SELECT FIRST_NAME,LAST_NAME,CONCAT(FIRST_NAME,LAST_NAME) , SALARY
FROM EMPLOYEES ORDER BY SALARY ASC;

--7.Write a Oracle SQL query to display the name of the employees in order to earning from highest salary to lowest--
SELECT FIRST_NAME,LAST_NAME,CONCAT(FIRST_NAME,LAST_NAME), SALARY 
FROM EMPLOYEES ORDER BY SALARY DESC;

--8. Write a Oracle SQL query to display the name of the employees in order to alphabetically ascending order.--

SELECT FIRST_NAME,LAST_NAME,CONCAT(FIRST_NAME,LAST_NAME) AS FNM 
FROM EMPLOYEES ORDER BY FIRST_NAME;

--9. Write a Oracle SQL query to display employee id, name, department no, salary of the employees. 
--The output first based on the employee name in ascending order, for unique name department will come in ascending order,
--and for same name and department the highest salary will come first.--


SELECT EMPLOYEE_ID,JOB_ID,SALARY FROM EMPLOYEES
ORDER BY FIRST_NAME ASC, JOB_ID DESC,SALARY DESC;

--10. Write a Oracle SQL query to display the name and their annual salary. The result should contain those employees first who earning the highest salary.

SELECT FIRST_NAME, SALARY *12 
FROM EMPLOYEES ORDER BY SALARY DESC;

--11. Write a Oracle SQL query to display department id and total number of employees working in each department.--

SELECT JOB_ID,COUNT(JOB_ID) FROM EMPLOYEES
GROUP BY JOB_ID;

--12. Write a Oracle SQL query to display the designation (job id) and total number of employees working in each designation.

SELECT JOB_ID,COUNT(EMPLOYEE_ID) FROM EMPLOYEES
GROUP BY JOB_ID;

--13. Write a Oracle SQL query to display the department number and total salary for each department.

SELECT * FROM EMPLOYEES;

SELECT DEPARTMENT_ID,COUNT(SALARY)FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

--14. Write a Oracle SQL query to display the department number and maximum salary for each department.--
SELECT * FROM EMPLOYEES;

SELECT DEPARTMENT_ID,MAX(SALARY) FROM EMPLOYEES
GROUP BY(DEPARTMENT_ID);

--15. Write a Oracle SQL query to display the designations (job id) and total salary allotted for each designation from the company.

SELECT DEPARTMENT_ID,SUM(SALARY)FROM EMPLOYEES
GROUP BY(DEPARTMENT_ID);
 





