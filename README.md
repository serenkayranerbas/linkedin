# 📊 LinkedIn Job Postings Analyst
![LinkedIn Job Postings Dashboard Demo](linkedin-job-posting.gif)

An end-to-end Data Analytics project analyzing **2023–2024 LinkedIn job postings in the United States**.

This project was developed as part of the **Workintech Data Analyst Program**.

## 🎯 Project Overview

The goal of this project was to analyze the U.S. job market from different perspectives and answer questions such as:

- Where are job opportunities concentrated?
- Which industries, companies, and positions have the highest hiring demand?
- How does hiring demand vary geographically?
- What do companies offer candidates?
- Which factors are associated with job posting engagement?
- Can salary be predicted using job posting features?

The dataset contains approximately:

- **124K Job Postings**
- **72K Different Job Titles**
- **24K Companies**
- **389 Industries**

---

## 📈 Analysis Areas

### 1. Industry & Company Analysis

We analyzed job posting demand across industries, companies, and positions.

**Hospitals and Health Care** had the highest job posting volume, with approximately **18K postings**, representing around **14.34%** of all postings.

We then drilled down from industry → company → position to identify where hiring demand was concentrated.

---

### 2. Geographic Analysis

We analyzed the geographic distribution of job postings across U.S. states and cities.

**California** had approximately **11K job postings**, followed by **Texas** with approximately **10K postings**.

This analysis helped identify where hiring demand was geographically concentrated.

---

### 3. Company Size & Experience Level

Companies were grouped into:

- Small Scale
- Medium Scale
- Large Scale

Large companies had approximately **34K job postings**, while small companies followed closely with approximately **32K postings**.

We also analyzed how experience-level demand differed across company-size segments.

---

### 4. Job Posting Engagement

We investigated the relationship between a job posting's **active duration and number of views**.

The analysis showed a **positive but weak relationship**, suggesting that keeping a job posting active for longer does not necessarily result in substantially higher visibility.

Experience level and location were also explored as additional dimensions.

---

## 🧪 Hypothesis Testing

We used statistical methods to test relationships within the job posting data.

Examples include:

- Active duration vs. views
- Views vs. applications
- Company characteristics vs. salary

The goal was to move beyond visualization and evaluate whether observed relationships were statistically meaningful.

---

## 🤖 Machine Learning – Salary Prediction

In the Machine Learning phase, we explored whether salary could be predicted using job posting characteristics.

### Model

**Linear Regression**

### Features included

- Job Title
- Work Type
- Experience Level
- Pay Period
- City
- State

The workflow included:

- Missing value handling
- Outlier detection using IQR
- Categorical feature imputation
- One-Hot Encoding
- Train/Test Split
- Linear Regression
- Model evaluation

---

## 🛠️ Technologies Used

- **Python**
- **Pandas**
- **Scikit-learn**
- **SQL**
- **Google BigQuery**
- **dbt**
- **Power BI**
- **Jupyter / Google Colab**
- **Git & GitHub**

---

## 🔄 Project Workflow

Data Collection  
↓  
BigQuery  
↓  
SQL & dbt Data Modeling  
↓  
Data Cleaning & Transformation  
↓  
Exploratory Data Analysis  
↓  
Statistical Hypothesis Testing  
↓  
Power BI Visualization  
↓  
Machine Learning  
↓  
Business Insights & Recommendations

---

## 💡 Business Value

The project demonstrates how job-market data can be transformed into actionable insights.

The analysis can help:

- Identify companies with recurring hiring demand
- Detect high-demand positions and locations
- Create more targeted candidate segments
- Improve job-to-candidate matching
- Support salary analysis and estimation
- Better understand job posting engagement

---

## 👥 Team

This project was developed collaboratively by:

- **Seren Kayran Erbaş**
- **Cansu Ayaz**
- **Esra Cantürk**
- **Gökberk Ozan**

Special thanks to **Emre Hocam** for his valuable feedback throughout the project.

---

## 📌 Project Presentation

The complete project presentation is available in this repository:

`LinkedIn_Job_Posting_END_v2.pdf`

---

## 🚀 About the Project

This project allowed us to experience an **end-to-end Data Analytics workflow**, from raw data preparation and data modeling to visualization, statistical analysis, business insights, and Machine Learning.

It was developed as part of the **Workintech Data Analyst Program**.
