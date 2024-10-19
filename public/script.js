document.addEventListener("DOMContentLoaded", () => {
  fetch(`http://localhost:3000/empleados`)
    .then((response) => response.json())
    .then((empleados) => {
      const tbody = document.getElementById("empleados-tbody");
      empleados.forEach((empleado) => {
        const row = document.createElement("tr");

        const idCell = document.createElement("td");
        idCell.textContent = empleado.documento;
        row.appendChild(idCell);

        const nombreCell = document.createElement("td");
        nombreCell.textContent = empleado.nombre;
        row.appendChild(nombreCell);

        const botonCell = document.createElement("td");
        botonCell.innerHTML = `<button type="button" class="btn btn-secondary" onclick="cargarDatos(${empleado.id})">Ver más</button>`;
        row.appendChild(botonCell);

        tbody.appendChild(row);
      });
    })
    .catch((error) => console.error("Error al obtener los empleados:", error));
});

function cargarDatos(id) {
  fetch(`http://localhost:3000/empleados/${id}`)
    .then((response) => response.json())
    .then((empleado) => {
      document.getElementById("id").value = empleado.documento;
      document.getElementById("nombre").value = empleado.nombre;
      document.getElementById("puesto").value = empleado.puesto;
      document.getElementById("salario").value = empleado.salario;
    });
}


function insertarEmpleados(cantidad) {
  fetch(`http://localhost:3000/generarEmpleados`)
    .then((response) => response.json())
    .then((data) => {});

  window.location.reload();
}
