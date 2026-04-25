CREATE DATABASE construction_db;
USE construction_db;

CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100),
    location VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2)
);

CREATE TABLE workers (
    worker_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    role VARCHAR(50),
    daily_wage DECIMAL(8,2)
);

CREATE TABLE materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(100),
    cost_per_unit DECIMAL(10,2)
);

CREATE TABLE project_workers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT,
    worker_id INT,
    days_worked INT,
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (worker_id) REFERENCES workers(worker_id)
);

CREATE TABLE material_usage (
    id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT,
    material_id INT,
    quantity INT,
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (material_id) REFERENCES materials(material_id)
);
