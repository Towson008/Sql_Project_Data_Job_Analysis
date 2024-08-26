/*
Questions: What are top paying data analyst job?
-identify the top 100 highest-paying data analyst role that are available remotely
- focus on job postings with specific salaries (remove nulls)
-Why? highlight the top-paying opportunities for Data analysts, offering insights into 
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,  
    name AS company_name  
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg ASC

LIMIT 100;