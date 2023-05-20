
SET GLOBAL host_cache_size=0

-- Remover cualquier base de datos "learn_bash" repetida
DROP DATABASE learn_bash;

-- Crea la base de datos "learn_bash"
CREATE DATABASE learn_bash CHARACTER SET utf8;

-- Selecciona la base de datos "learn_bash"
USE learn_bash;

-- Crea la tabla "empleados"
CREATE TABLE empleados (
  id INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  departamento TEXT NOT NULL,
  salario INTEGER NOT NULL
);

-- Inserta los datos en la tabla "empleados"
INSERT INTO empleados (id, nombre, departamento, salario) VALUES
  (1, 'Juan Pérez', 'Ventas', 60000),
  (2, 'Ana Gómez', 'Marketing', 45000),
  (3, 'Luis Ramírez', 'Ventas', 55000),
  (4, 'María Flores', 'Recursos Humanos', 50000),
  (5, 'José Sánchez', 'Ventas', 70000);