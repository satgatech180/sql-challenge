-- * Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
-- * Import each CSV file into the corresponding SQL table.

CREATE TABLE employees(
    emp_no          INT         NOT NULL,
    birth_date      DATE        NOT NULL,
    first_name      VARCHAR(14) NOT NULL,
    last_name       VARCHAR(16) NOT NULL,
    gender          VARCHAR(1)  NOT NULL,
    hire_date       DATE        NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departments(
    dept_no         VARCHAR(4)  NOT NULL,
    dept_name       VARCHAR(50) NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE salaries(
    emp_no          INT         NOT NULL,
    salary          INT         NOT NULL,
    from_date       DATE        NOT NULL,
    to_date         DATE        NOT NULL,
    PRIMARY KEY (emp_no, from_date),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)                    
);

CREATE TABLE dept_emp(
    emp_no          INT         NOT NULL,
    dept_no         VARCHAR(4)  NOT NULL,
    from_date       DATE        NOT NULL,
    to_date         DATE        NOT NULL,
    PRIMARY KEY(emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)                    
);

CREATE TABLE dept_manager(
    dept_no         VARCHAR(4)  NOT NULL,
    emp_no          INT         NOT NULL,
    from_date       DATE        NOT NULL,
    to_date         DATE        NOT NULL,
    PRIMARY KEY(emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),                    
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)                    
);

CREATE TABLE titles(
    emp_no          INT         NOT NULL,
    title           INT         NOT NULL,
    from_date       DATE        NOT NULL,
    to_date         DATE,        
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)                    
)
