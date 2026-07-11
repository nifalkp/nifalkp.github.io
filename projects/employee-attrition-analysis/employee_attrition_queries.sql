USE employee_db;

SELECT COUNT(*) FROM employee_data;
SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS left_company,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS attrition_rate_percent
FROM employee_data;
SELECT
    department,
    COUNT(*) AS total,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS left_count
FROM employee_data
GROUP BY department
ORDER BY left_count DESC;
SELECT
    over_time,
    COUNT(*) AS total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS left_count,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS attrition_pct
FROM employee_data
GROUP BY over_time;
SELECT
    job_role,
    ROUND(AVG(monthly_income), 0) AS avg_salary,
    COUNT(*) AS employee_count
FROM employee_data
GROUP BY job_role
ORDER BY avg_salary DESC;
SELECT
    years_at_company,
    COUNT(*) AS total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS left_count
FROM employee_data
GROUP BY years_at_company
HAVING COUNT(*) > 20
ORDER BY years_at_company;
SELECT
    job_role,
    COUNT(*) AS total,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS left_count,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS attrition_pct
FROM employee_data
GROUP BY job_role
ORDER BY attrition_pct DESC;
SELECT
    department,
    ROUND(AVG(age), 0) AS avg_age,
    ROUND(AVG(monthly_income), 0) AS avg_salary
FROM employee_data
GROUP BY department;
SELECT
    attrition,
    ROUND(AVG(monthly_income), 0) AS avg_salary,
    ROUND(MIN(monthly_income), 0) AS min_salary,
    ROUND(MAX(monthly_income), 0) AS max_salary
FROM employee_data
GROUP BY attrition;
SELECT
    gender,
    COUNT(*) AS total,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS left_count,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS attrition_pct
FROM employee_data
GROUP BY gender;