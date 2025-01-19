# sql-challenge

**Instructions**

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

**Part 1: Data Modeling**

![QuickDBD-export (1)](https://github.com/user-attachments/assets/67f0178f-48e6-4c1b-b6a3-8a6f1e94f835)

# Key Relationships

titles and employees tables: (1:N)

departments and dept_manager tables: (1:N)

employees and dept_manager tables: (1:N)

employees and dept_emp tables: (M:N)

departments and dept_emp tables: (M:N)

employees and salaries tables: (1:1)

# ----------------------------------------------------------------

# Part 2: Data Engineering

Tables created and placed in Data_Engineering.sql

I stored the birth_date and hire_date as VARCHAR(10) instead of DATE.
I was having trouble with importing the employees CSV into PostgreSQL databases.
I tried to execute a command to change the date from YYYY-MM-DD to MM-DD-YYYY but I kept getting an error.
I understand using DATE is the correct Data Type but after struggling with the error I ended up using VARCHAR.



# ----------------------------------------------------------------

# Part 3: Data Analysis

1. List the employee number, last name, first name, sex, and salary of each employee.
![Q1](https://github.com/user-attachments/assets/058ab9af-deff-4b3d-931e-005bbdcc99c4)

2. List the first name, last name, and hire date for the employees who were hired in 1986.
![Q2](https://github.com/user-attachments/assets/13bde213-65e4-481f-9a4b-37f636184540)
  
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

![Q3](https://github.com/user-attachments/assets/9aadd917-900c-4633-a276-e0fedcd3e70e)

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

![Q4](https://github.com/user-attachments/assets/a5b4e4ec-d5e1-4fe7-a323-897aa17dae6f)

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
![Q5](https://github.com/user-attachments/assets/67042e62-adcf-47ae-89dc-0e5f180a3c79)

6. List each employee in the Sales department, including their employee number, last name, and first name.
![Q6](https://github.com/user-attachments/assets/8185fb08-3ba1-449d-990e-f8dd0cd567c1)

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

![Q7](https://github.com/user-attachments/assets/278de93a-845c-4a97-b152-168fa5722ab0)

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
![Q8](https://github.com/user-attachments/assets/0cd48f8a-bb8f-4a71-86a2-39fe295c59de)


