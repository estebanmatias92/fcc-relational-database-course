-- Remove any duplicate "mario_database" database
DROP DATABASE mario_database;

-- Create the "mario_database" database
CREATE DATABASE mario_database WITH ENCODING 'UTF8';

\c mario_database;

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