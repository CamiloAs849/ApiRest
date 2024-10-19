> [!NOTE]
> Descripción general:
> Este proyecto implementa un sistema de gestión de empleados que incluye
>
> Script de inserción de datos: Inserta múltiples registros de empleados ficticios en una base de datos MySQL.
>
> API REST: Permite acceder a la lista de empleados y consultar la información de un empleado específico a través de dos rutas: /empleados y /empleados/:id.
A continuación, se detallan las instrucciones para ejecutar el script de inserción de datos y cómo utilizar la API REST.

> [!TIP]
> Desde cualquier carpeta de tu equipo, descargar el repositorio de git o ejecutar los siguientes comandos:
>
> git clone https://github.com/CamiloAs849/ApiRest.git
>
> cd ApiRest

> [!IMPORTANT]
> Antes de ejecutar el script y acceder a la API, asegúrate de tener instalados los siguientes elementos:
>
> Node.js (versión 12 o superior): Puedes descargarlo desde nodejs.org.
> 
> MySQL: Debes tener MySQL instalado y en funcionamiento en tu entorno.
> 
> Dependencias del Proyecto: Asegúrate de que las dependencias están instaladas con el siguiente comando:

> [!TIP]
> npm install

> [!IMPORTANT]
> Configuración de la base de datos
> Desde tu servidor local ejecuta el script de empleados.sql o ejecuta en tu consola de sql el siguiente script:

> [!TIP]
>  CREATE DATABASE empleados_db;
> 
> USE empleados_db;
> 
> CREATE TABLE Empleados (
> 
>    ID INT AUTO_INCREMENT PRIMARY KEY,
> 
>    Nombre VARCHAR(100),
> 
>    Puesto VARCHAR(100),
> 
>    Salario DECIMAL(10, 2)
>
> 
>);

> [!IMPORTANT]
> En el archivo servidor.js desde la linea 9 hasta la 12 cambia los datos referentes a tu servidor, host, user, password,y database que sea empleados.

> [!TIP]
> Ejecuta el servidor con:
> 
> node ./servidor.js
>
> El servidor se levantará en http://localhost:3000

> [!IMPORTANT]
> Para ejecutar el script y se inserten 10 empleados con datos ficticios, darle en el botón generar, automaticamente se ejecutará y se insertarán los datos
>
> Para ver mas información de los empleados, en la tabla darle a ver más, al lado izquierdo aparecerá la información completa del empleados.
