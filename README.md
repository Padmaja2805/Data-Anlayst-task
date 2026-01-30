# 📊 Data Analyst Job Listings Analysis (India)

## 📌 Project Overview
This project analyzes **Data Analyst job listings in India** to extract meaningful insights for job seekers and recruiters.  
It demonstrates an **end-to-end analytics workflow** using **SQL, Power BI, and Machine Learning** — from raw data to insights and salary prediction.

The project focuses on:
- Job market trends
- Salary analysis
- Company ratings and reviews
- Predictive modeling for base salary

---

## 📂 Dataset Description
The dataset contains job listings with the following key columns:

- job_id  
- job_title  
- company  
- experience  
- min_exp, max_exp  
- base_salary, max_salary  
- location  
- jobListed_days_ago  
- postedIn  
- rating  
- reviews_count  
- details  
- salary_data_provided_by  

---

## 🛠️ Tools & Technologies Used

### Programming & Analysis
- Python (Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn, SciPy)

### Database
- Microsoft SQL Server (SSMS)

### Visualization
- Power BI Desktop (Power Query, DAX)

---

# 🧠 Part 1: Advanced Data Manipulation with SQL

### 🎯 Objective
To support Python analysis and generate additional insights using advanced SQL techniques.

---

## ✅ Work Completed in SQL

### 1️⃣ Complex Queries
- Identified **Top 5 companies with the highest average job ratings**
- Used **Common Table Expressions (CTEs)** to:
  - Calculate average base salary and max salary by location
  - Identify locations where average salary exceeds a defined threshold

✔ Helped uncover **high-paying locations** and **top-rated companies**

---

### 2️⃣ Stored Procedure – Experience Extraction
- Created a stored procedure to:
  - Parse the `experience` text column
  - Extract minimum and maximum experience
  - Update structured columns `min_exp` and `max_exp`

✔ Converted unstructured text data into **usable numeric features**

---

### 3️⃣ Trigger – Job Listing Freshness
- Implemented a trigger to:
  - Automatically update `jobListed_days_ago`
  - Calculate days based on `postedIn` date and current date
  - Execute whenever a new job record is inserted

✔ Ensured **real-time accuracy** of job freshness data

---

### 4️⃣ View – Complete Salary Information
- Created a SQL view to:
  - Display only records with complete base and max salary
  - Filter out jobs with missing salary information

✔ Simplified reporting and downstream analysis

---

# 📊 Part 2: Dynamic Visualizations with Power BI

### 🎯 Objective
To present insights through **interactive and dynamic dashboards** for data-driven decision-making.

---

## ✅ Work Completed in Power BI

### 1️⃣ Data Transformation (Power Query)
- Imported data from SQL / CSV source
- Handled missing values in salary, rating, and reviews
- Standardized data types (date, numeric, text)
- Cleaned text fields using Trim and Clean operations

✔ Prepared a **clean, analysis-ready dataset**

---

### 2️⃣ Dashboard Visualizations
Designed an interactive dashboard including:

- Job Listings by Location
- Top Hiring Companies
- Average Rating by Company
- Ratings vs Reviews Trend Analysis

✔ Provided visibility into **hiring trends and company reputation**

---

### 3️⃣ Advanced DAX Analysis
Created custom DAX measures such as:
- Total Job Listings
- Average Job Rating
- Average Base Salary
- New Jobs Posted in the Last 7 Days
- Average Experience Required by Location and Company

✔ Added **business logic and KPIs** beyond raw data

---

### 4️⃣ Interactivity & Filters
- Implemented slicers for:
  - Location
  - Company
  - Experience range
  - Salary range
  - Rating
- Enabled cross-filtering and drill-down analysis

✔ Allowed users to explore insights dynamically

---

# 🤖 Part 3: Machine Learning – Base Salary Prediction

### 🎯 Objective
To build a predictive model to **estimate base salary** and identify **key factors influencing salary**.

---

## ✅ Work Completed in Machine Learning

### 1️⃣ Data Preparation
- Removed records with missing base salary
- Converted experience and salary fields to numeric format
- Encoded categorical variables using One-Hot Encoding
- Scaled numerical features
- Split dataset into training and testing sets

---

### 2️⃣ Model Development
- Built **Linear Regression** as a baseline model
- Implemented **Random Forest Regressor** to capture non-linear relationships

✔ Random Forest achieved better predictive performance

---

### 3️⃣ Model Evaluation
Models were evaluated using:
- R² Score
- Mean Absolute Error (MAE)
- Root Mean Squared Error (RMSE)

✔ Ensured reliable performance comparison

---

### 4️⃣ Feature Selection & Importance
- Used Random Forest feature importance to identify key salary drivers
- Found that:
  - Experience (min & max)
  - Location
  - Max salary
  - Company rating  
  have the strongest influence on base salary

✔ Delivered **explainable and actionable insights**

---

## 📌 Key Insights
- Metro cities offer higher salaries for data analyst roles
- Experience significantly impacts compensation
- Company reputation correlates with better pay
- Max salary is a strong indicator of base salary

---

## 📁 Project Structure
