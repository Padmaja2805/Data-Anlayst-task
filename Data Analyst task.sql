use Task;

SELECT COUNT(*) AS total_rows
FROM [dbo].[Data Analyst Task];

--1.Task--
--1.1 Complex Queries--
-- Query: Top 5 companies with highest average job ratings
-- Assumption: Table = Jobs, Columns = CompanyName, JobRating

SELECT TOP 5
    company,
    AVG(rating) AS AvgJobRating
FROM [dbo].[Data Analyst Task]
GROUP BY company
ORDER BY AvgJobRating DESC;

--1.2 Locations with Average Salary Above a Threshold Using CTE--

-- Query: Identify locations with high average base salary
-- Using CTE for clarity and reusability

WITH LocationSalaryCTE AS (
    SELECT
        location,
        AVG([base_salary]) AS AvgBaseSalary,
        AVG([max_salary]) AS AvgMaxSalary
    FROM [dbo].[Data Analyst Task]
    GROUP BY location
)
SELECT *
FROM LocationSalaryCTE
WHERE AvgBaseSalary > 50000;  -- Replace threshold as needed

--2 Stored Procedures:--
-- Procedure: Extract min and max experience from 'experience' string
-- Table: [dbo].[Data Analyst Task], Columns: experience, min exp, max exp
-- Example format: '2-5 years'

CREATE PROCEDURE experience
AS
BEGIN
    UPDATE [dbo].[Data Analyst Task]
    SET 
        [min_exp] = TRY_CAST(SUBSTRING(experience, 1, CHARINDEX('-', experience) - 1) AS INT),
        [max_exp] = TRY_CAST(SUBSTRING(
                        experience, 
                        CHARINDEX('-', experience) + 1, 
                        CHARINDEX(' ', experience, CHARINDEX('-', experience)) - CHARINDEX('-', experience) - 1
                     ) AS INT)
    WHERE experience LIKE '%-%';  -- Only rows with a range
END;


EXEC experience;

--3 Triggres--

-- Trigger: Update 'jobListed(days ago)' automatically on new insert
-- Table: [dbo].[Data Analyst Task], Columns: postedIn, jobListed(days ago)

CREATE TRIGGER trg_UpdateJobListed
ON [dbo].[Data Analyst Task]
AFTER INSERT
AS
BEGIN
    UPDATE j
    SET [jobListed_days_ago] = DATEDIFF(DAY, i.postedIn, GETDATE())
    FROM [dbo].[Data Analyst Task] j
    INNER JOIN inserted i ON j.Job_ID = i.Job_ID;  -- Match new rows
END;


--4 Views--
-- View: Show jobs with both base and max salary available
-- Table: [dbo].[Data Analyst Task], Columns: base salary, max salary

CREATE VIEW JobSalaryView AS
SELECT *
FROM [dbo].[Data Analyst Task]
WHERE [base_salary] IS NOT NULL
  AND [max_salary] IS NOT NULL;

  SELECT * FROM JobSalaryView;

  --Top-5 Review ratimgs--
  -- Query: Identify top 5 jobs combining rating and reviews count
-- Table: [dbo].[Data Analyst Task], Columns: rating, [reviews count]

SELECT TOP 5
    job_title,
    company,
    rating,
    [reviews_count]
FROM [dbo].[Data Analyst Task]
ORDER BY rating DESC, [reviews_count] DESC;






