-- SELECT <columnName> FROM <tableName>;
SELECT * FROM employees;
-- SUGGESTED FORMAT --
SELECT * FROM JOBS;
select * from employees;
SeLeCt * FrOm eMploYEES;
SELECT * FROM regions;
SELECT manager_id FROM employees;
SELECT first_name, hire_date FROM employees;
-- Write a querty to retrieve all the information from the phone number, job id, and manager id from employees table
select phone_number, job_id, manager_id from employees;
SELECT * FROM employees
WHERE job_id = 'IT_PROG';
--1. FROM   -> First retrieves the table.
--2. WHERE  -> filters the rows in the table, or tables.
--3. SELECT -> selects the specific column from the table.
-- Write the query to get the department name column for department id = 50 from departments table.
select department_name, department_id from departments
WHERE department_id = 50;
SELECT * FROM EMPLOYEES
WHERE first_name = 'Neena'
AND last_name = 'King'
AND JOB_ID = 'AD_PRES';
-- Write a query and retrieve first_name with Bruce and David;
SELECT * FROM EMPLOYEES
WHERE first_name != 'David';
SELECT * FROM EMPLOYEES
WHERE salary in (17000, 9000, 3100, 2900);
SELECT * FROM EMPLOYEES
WHERE first_name in ('Neena', 'Alexander');
SELECT * FROM EMPLOYEES
WHERE salary <> 17000
or salary <> 9000
or salary <> 3100
or salary <> 2900;
--Write the query to get all columns from the employees' table if the department id is 50 and the job id is “ST_MAN”
SELECT * FROM employees
WHERE department_id = 50
AND job_id = 'ST_MAN';
--Write the query to get all columns from the employees’ table if the department id is 50 or the job id is “ST_MAN”
SELECT * FROM employees
WHERE department_id = 50
OR job_id = 'ST_MAN';
--Write the query to get all columns from the employees’ table if the department id is 70 or the salary is more than 5000
SELECT * FROM employees
WHERE department_id = 70
OR salary > 5000;
--Write the query to get all columns from the employees’ table if the department id is 70 and the salary is more than 5000
SELECT * FROM employees
WHERE department_id = 70
AND salary > 5000;
--Write the query to find the employees who are not displayed in step 4.
SELECT * FROM employees
WHERE department_id <> 70
or salary <= 5000;
SELECT * FROM employees
WHERE NOT (department_id = 70 AND salary > 5000 );
SELECT * FROM employees
WHERE commission_pct IS NOT null;
SELECT * FROM employees
WHERE salary BETWEEN 7000 AND 10000;
SELECT * FROM employees
WHERE salary > 7000
AND salary < 10000;
SELECT * FROM employees
WHERE hire_date BETWEEN '01-JUL-96' AND '31-JUL-96';
--1. Write the query to get all columns from employees table if salary is between 1000 and 10000
SELECT * FROM employees
WHERE salary BETWEEN 1000 AND 10000;
--2. Write the query to get all columns from employees table if salary is between 6000 and 100000 and hire date is after June 7, 1997
SELECT * FROM employees
WHERE salary BETWEEN 6000 AND 10000
AND hire_date > '07-JUN-97';
SELECT * FROM  EMPLOYEES
WHERE (salary >= 6000 and salary <= 100000)
AND hire_date > '07-JUN-97';
select first_name || ' ' || last_name from employees;
select first_name from employees;
--1. Write the query to get last name and add them ‘@gmail.com’ as columnName is ‘gmailAccount’ from employees table
SELECT last_name || '@gmail.com' as gmailAccount from employees;
--2. Write the query to get last name and add them ‘@gmail.com’ as columnName is ‘Gmail Account’ from employees table.
SELECT concat(last_name, '@gmail.com') as "gmail account" from employees
order by last_name desc;
-- Write the query to get all columns from the employee's table for salaries more than 5000 and order the result for hire date in descending order.
SELECT * FROM employees
WHERE salary > 5000
ORDER BY hire_date desc;
SELECT * FROM employees
WHERE first_name LIKE 'A%';
Select * from employees
Where first_name like '%t_p%'
Order by first_name;
-- 1.	Write a query that returns those employees who have  commission less than their salary
SELECT * FROM employees
WHERE commission_pct < salary;
-- 2.	Write a query that returns all employees that have a salary greater than 2500 and also work in department_id no 20
SELECT * FROM employees
WHERE salary > 2500
and DEPARTMENT_ID = 20;
-- 3.	Write a query that returns all employees that are not AD_VP nor SA_REP and have a salary greater than or equal to 2000
SELECT * FROM employees
WHERE job_id NOT IN  ( 'AD_VP', 'SA_REP' )
AND salary >= 2000;
-- 4.	Write a query to retrieve the first names and last names of all employees along with their job IDs, and concatenate them into a job_id column
--      in the format: <first_name> <last_name> works as a <job_id>. Alias this column as "Full Info".
SELECT first_name, last_name, first_name || ' ' || last_name || ' works as a ' || job_id AS "Full Info" FROM employees;
SELECT first_name, last_name, concat(concat(concat(first_name, ' ' ), concat(last_name, ' works as a ')), job_id) as "Full Info" FROM employees;
-- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per month "
SELECT first_name || ' makes $' || salary || ' per month' as "monthly salary" from employees;
-- 6. -- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per year "
SELECT first_name || ' makes $' || (salary * 12)  || ' per year' as "yearly salary" from employees;
select first_name from employees;
------------------------------------------------------
---------------- SINGLE ROW FUNCTIONS ----------------
------------------------------------------------------
SELECT UPPER('hello') from employees;
SELECT UPPER('hello') from dual;
select *  from dual;
SELECT INITCAP('hello my name is NAME') AS sentence from dual;
SELECT LOWER('THIS IS TECHGLOBAL B6') from dual;
select LOWER(job_id) from employees;
select * from employees;
-- Write a query to concats first_name and job id columns from the employees table
-- and returns them as a concat first_name in upper case and job_id in lower case
-- STEVEN ad_pres NOTE : PLEASE USE CONCAT FUNCTION NOT ||
SELECT CONCAT(CONCAT(UPPER(first_name), ' '), lower(job_id)) from employees;
--1. Write the query to get all employees last names in upper case.
SELECT UPPER(last_name) FROM employees;
--2. Write the query to get all employees emails in lower case.
SELECT LOWER(email) FROM employees;
--3. Write the query to get all employees first name in upper case, last names in lower case and emails in only first letter upper case.
SELECT UPPER(first_name), LOWER(last_name), INITCAP(email) from employees;
--4. Write a query to retrieve the first names and last names of all employees in uppercase, and their job titles in lowercase.
--   Additionally, alias the columns as "First Name", "Last Name", and "Job Title" respectively.
SELECT UPPER(first_name) AS "First Name", UPPER(last_name) AS "Last Name", LOWER(job_id) AS "Job Title" FROM employees;
--5. Write a query and return each row in this format “steve IS THE NAME and their job is: MANAGER “
select CONCAT(CONCAT(LOWER(first_name), UPPER(' is the name ')), CONCAT('and their job is: ', job_id)) as "concat function" FROM employees;
SELECT LENGTH('hello my name is name') AS length FROM dual;
SELECT LENGTH(first_name) as length from employees;
SELECT first_name, LENGTH(first_name) as length FROM employees
WHERE LENGTH(first_name) = 6;
SELECT SUBSTR('hello', 2) FROM employees;
SELECT SUBSTR('hello', 2, 2) FROM employees;
-- 'hello' 2  e
-- 'hello' 2, 2  el
-- 'hello' 2, 3  ell
SELECT SUBSTR('hello', 2, 3) FROM employees;
SELECT SUBSTR('Hello my name is', 10) FROM dual;
SELECT SUBSTR('Hello my name is', 10, 5) FROM dual;
SELECT LENGTH(SUBSTR('Hello my name is', 10, 5)) FROM dual;
select instr(LOWER(city), 'a') from locations;



-- 5.  Write the query to get all last names that starting from index number 2 and add 4 more character from employees.
SELECT SUBSTR(last_name, 2, 4) FROM employees;
-- 6.  Write the query to get all last names that starting from index number 4 from employees .
SELECT SUBSTR(last_name, 4) FROM employees;
-- 7.  Write the query to find the city includes ‘a’ character in locations.
SELECT city FROM locations
WHERE INSTR(city, 'a') >0;
-- 8.  Write the query to return first name and last name combined as lower case with the space and
--     find the index number of ‘k’ from combined firstname and lastname from employees.
SELECT LOWER(first_name || ' ' || last_name) AS "full_name", INSTR(LOWER(first_name || ' ' || last_name), 'k') AS "index number" FROM employees;


-- HOMEWORK 1

--1.	Write a query to display the first name, last name, and hire date of all employees who were hired between January 1, 2000, and December 31, 2000, and whose last name begins with the letter 'S'.

--2.	Write a query to display the first name, last name, and job title of all employees who work in the Sales or Accounting departments.

--3.	Write a query to display the first name, last name, and salary of all employees who earn more than $10,000 and less than $20,000.

--4.	Write a query to display the first name, last name, and hire date of all employees who do not have a manager.

--5.	Write a query to display the first name, last name, and job title of all employees who are either Sales Representatives or Sales Managers.

--6.	Write a query to display the first name, last name, and hire date of all employees who were not hired in the year 2000.

--7.	Write a query to display the first name and last name of all employees, concatenated as "First Last".

--8.	Write a query to display the first name, last name, and salary of all employees, sorted by salary in descending order.

--9.	Write a query to display the first name, last name, and job title of all employees whose job title contains the word "Manager".

--10.	Write a query to display the first name, last name, and salary of all employees whose salary is not null.

--11.	Write a query to display the first name, last name, and job title of all employees, with the first name and last name in uppercase letters and the job title in lowercase letters.

--12.	Write a query to display the first name, last name, and job title of all employees, with the first letter of each word in the job title capitalized.

--13.	Write a query to display the first name, last name, and length of the job title of all employees.

--14.	Write a query to display the first name, last name, and a concatenated string of the first name, last name, and job title of all employees.

--15.	Write a query to display the first name, last name, and the first three characters of the job title of all employees.

--16.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the job title of all employees.

--17.	Write a query to display the first name, last name, and salary of all employees, with the salary rounded to the nearest thousand dollars.

--18.	Write a query to display the first name, last name, and salary of all employees, with the salary truncated to the nearest thousand dollars.

--19.	Write a query to display the first name, last name, and the length of the first name of all employees.

--20.	Write a query to display the first name, last name, and a concatenated string of the first name, a comma, and the last name of all employees.

--21.	Write a query to display the first name, last name, and the first three characters of the first name of all employees.

--22.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "e" in the first name of all employees.

--23.	Write a query to display the first name, last name, and the length of the last name of all employees.

--24.	Write a query to display the first name, last name, and the first three characters of the last name of all employees.

--25.	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the last name of all employees.



