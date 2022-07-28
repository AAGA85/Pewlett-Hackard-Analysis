--DELIVERABLE 1

-- Create Retirement Title
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_title
FROM employees AS e 
INNER JOIN titles AS ti
ON (e.emp_no = ti. emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
SELECT * FROM retirement_title;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
FROM employees AS e 
INNER JOIN titles AS ti
ON (e.emp_no = ti. emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.from_date DESC;
SELECT * FROM retirement_title;


-- Use Dictinct with Orderby to remove duplicate rows and excludes those employees that have already left the company
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
--INTO unique_titles
FROM employees AS e 
INNER JOIN titles AS ti
ON (e.emp_no = ti. emp_no)
WHERE ti.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.from_date DESC;

-- Once we have verified that our table is getting what we want then proceed to create the table 

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO unique_titles
FROM employees AS e 
INNER JOIN titles AS ti
ON (e.emp_no = ti. emp_no)
WHERE ti.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.from_date DESC;

SELECT * FROM unique_titles;

-- Create a table to retrive the amount of retiring employees per unique title

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title)DESC;

SELECT * FROM retiring_titles;

--DELIVERABLE 2

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e. birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees AS e 
INNER JOIN dept_emp AS de
ON (e.emp_no = de. emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE ti.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;


