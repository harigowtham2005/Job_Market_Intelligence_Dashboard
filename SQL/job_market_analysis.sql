create database hello;
use hello;
select * from job;

#top hiring company
select company,sum(openings) as total from job group by company order by total desc limit 10;

#Total hiring city
select city,sum(openings) as total from job group by city order by total desc limit 10;

#Average Salary by Experience
select Experience_level,sum(openings) as total from job group by experience_level order by total desc;

#Work Mode Distribution
SELECT Work_Mode,COUNT(*) AS Total_Jobs FROM job GROUP BY Work_Mode;

#Top Paying Job Titles
select job_title,round(avg(salary_lpa),2) as average from job group by job_title order by average desc;

#Education Requirement Analysis
select education_required,COUNT(*) as Total_Jobs from job group by education_required order by total_jobs desc;

#Company Rating Analysis
select Company,round(avg(Company_Rating),2) as Avg_Rating from job group by Company order by Avg_Rating desc limit 10;

#Fresher Opportunities
select company, sum(openings) as openings from job where experience_level = 'Fresher (0-1 yr)' group by company order by openings desc;

#Competition Ratio
select job_title, sum(applicants) as applicants, sum(openings) as openings, round(sum(applicants)/sum(openings),2) as competition_ratio from job group by job_title order by competition_ratio desc;