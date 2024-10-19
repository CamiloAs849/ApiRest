const express = require("express");
const mysql = require("mysql2");
const path = require("path");
const { faker } = require("@faker-js/faker");

const app = express();

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "empleados",
  password: "",
});

app.use(express.static(path.join(__dirname, "public")));

app.get("/empleados", (req, res) => {
  connection.query(
    "SELECT * FROM Empleados ORDER BY id DESC",
    (err, results) => {
      if (err) {
        return res.status(500).send("Error al recuperar los empleados");
      }
      res.json(results);
    }
  );
});

app.get("/empleados/:id", (req, res) => {
  const id = req.params.id;
  connection.query(
    "SELECT * FROM Empleados WHERE ID = ?",
    [id],
    (err, results) => {
      if (err) {
        return res.status(500).send("Error al recuperar el empleado");
      }
      if (results.length === 0) {
        return res.status(404).send("Empleado no encontrado");
      }
      res.json(results[0]);
    }
  );
});

app.get("/generarEmpleados", (req, res) => {
  const empleados = [];

  for (let i = 0; i < 10; i++) {
    const nuevoEmpleado = {
      id: faker.number.int((min = 5000000), (max = 2147483647)),
      Nombre: faker.name.fullName(),
      Puesto: faker.name.jobTitle(),
      Salario: faker.finance.amount(1000, 6000, 0),
    };

    connection.query(
      "INSERT INTO Empleados (documento, nombre, puesto, salario) VALUES (?, ?, ?, ?)",
      [
        nuevoEmpleado.id,
        nuevoEmpleado.Nombre,
        nuevoEmpleado.Puesto,
        nuevoEmpleado.Salario,
      ],
      (err, results) => {
        if (err) {
          return res.status(500).send("Error al insertar empleado");
        }
        if (empleados.length === 10) {
          res.status(201).json("success");
        }
      }
    );
  }
});
app.listen(3000, () => {
  console.log(`Servidor corriendo en http://localhost:3000`);
});
