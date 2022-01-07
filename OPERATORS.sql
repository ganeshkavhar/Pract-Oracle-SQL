--1. Write a query to list the name of all the employees who are working in department number 20.
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID=20;

--2. Write a query to list the employees name and total salary of a year and yearly salary is more than $10000.

SELECT  FIRST_NAME ,LAST_NAME , SALARY*12 AS SAL
FROM EMPLOYEES
WHERE (SALARY*12)>10000;

--3. Write a query to list the employees name and salary who?s daily salary is more than $100.--
SELECT FIRST_NAME,FIRST_NAME
FROM EMPLOYEES
WHERE (SALARY/30) >100;

--4. Write a query to list the name of all the employees who are not working in department number 20.

SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID<>20;

SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID!=20;

--5. Write a query to list the name of all the employees who are working as X and Y a salary more than 5000.

SELECT * FROM EMPLOYEES
WHERE JOB_ID='FI_ACCOUNT' AND SALARY>5000;

--6. Write a query to list the names of all the employees who are working as accountant in finance section and drawing a salary less than $20000.

SELECT * FROM EMPLOYEES
WHERE JOB_ID='FI_ACCOUNT' AND SALARY<20000;

--7. Write a query to list the name of all the employees who are working as accountant in finance section and drawing a salary is greater than equal to $5000 and less than equal to $20000.

SELECT * FROM EMPLOYEES
WHERE JOB_ID='FI_ACCOUNT' AND SALARY>5000 AND SALARY<20000;

--8. Write a query to list the names, salary of all the employees who are working with a commission package.

--COMMISSION_PCT TABLE MUST REQUIRED IN THE TABLE
SELECT FIRST_NAME,LAST_NAME ,SALARY
FROM EMPLOYEES
WHERE SALARY IS NOT NULL;

--9. Write a query to list the name, salary of all the employees where employee first name belongs in a specified list.

SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE FIRST_NAME IN ('Peter', 'Smith');

SELECT DISTINCT(FIRST_NAME) 
FROM EMPLOYEES
WHERE EMPLOYEE_ID>105 AND EMPLOYEE_ID<120;

--10. Write a query to list the first name, last name, Job id of all the employees except "PRESIDENT" & "MGR" in asc order of Salaries.

SELECT FIRST_NAME ,JOB_ID 
FROM EMPLOYEES
WHERE JOB_ID<>'AD_VP' AND JOB_ID<>'FI_ACCOUNT'
ORDER BY SALARY ASC;

--11. Write a query to list the name (first and last name), hire date of all the employees who joined before or after 2005.

SELECT FIRST_NAME,LAST_NAME HIRE_DATE 
FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'YYYY')NOT IN(2005);

--12. Write query to list the name (first and last name), hire date of all the employees who joined
--on 1-JUL-2006,24-MAR-2007,04-JAN-2008 in ascending order of seniority.--

SELECT FIRST_NAME,LAST_NAME HIRE_DATE 
FROM EMPLOYEES
WHERE HIRE_DATE IN('1-JUL-2006','24-MAR-2007','04-JAN-2008')
ORDER BY HIRE_DATE;

--13. Write a query to concatenate first name, last name and job id from employees table in the following format.

SELECT FIRST_NAME,LAST_NAME,HIRE_DATE,CONCAT(FIRST_NAME,LAST_NAME,HIRE_DATE) AS DB
FROM EMPLOYEES;

SELECT FIRST_NAME,LAST_NAME, FIRST_NAME||LAST_NAME ,FIRST_NAME||'_'||LAST_NAME||HIRE_DATE
FROM EMPLOYEES;



