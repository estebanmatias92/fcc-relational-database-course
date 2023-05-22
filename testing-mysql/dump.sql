-- Remove any duplicate "testing_mysql" database
DROP DATABASE IF EXISTS testing_mysql;

-- Create the "testing_mysql" database
CREATE DATABASE testing_mysql CHARACTER SET utf8;

-- Select the "testing_mysql" database
USE testing_mysql;

-- Create the "employees" table
CREATE TABLE empleados (
  id INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  departamento TEXT NOT NULL,
  salario INTEGER NOT NULL
);

-- Insert data into the "employees" table
INSERT INTO empleados (id, nombre, departamento, salario) VALUES
  (1, 'Juan Pérez', 'Ventas', 60000),
  (2, 'Ana Gómez', 'Marketing', 45000),
  (3, 'Luis Ramírez', 'Ventas', 55000),
  (4, 'María Flores', 'Recursos Humanos', 50000),
  (5, 'José Sánchez', 'Ventas', 70000);