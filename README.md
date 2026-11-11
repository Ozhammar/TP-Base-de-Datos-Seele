# Seele — Sistema de gestión de ventas de indumentaria con reportes FastReport

## 1. Guía de prueba y ejecución

Para facilitar la corrección y prueba del sistema, se provee el ejecutable compilado y los scripts necesarios para levantar la base de datos con información de prueba.

### 1.1 Requisitos previos

* Sistema operativo Windows.

* **.NET 10 Desktop Runtime** (necesario para ejecutar aplicaciones Windows Forms).

* **MySQL Server 26.7**.

* MySQL Workbench o equivalente para ejecutar los scripts SQL.

### 1.2 Restaurar la Base de Datos

El sistema necesita conectarse a una base de datos local llamada `Seele`. Tienes **dos opciones** para crearla e insertar los datos de prueba (10 clientes, 13 variantes de prendas, 25 ventas y 19 facturas).

**Opción 1: Implementación por pasos (Recomendada)**

1. Abre MySQL Workbench y conéctate a tu servidor local.

2. Abre y ejecuta el archivo **`script creacionDB .sql`**. Este script creará la base de datos `Seele`, sus tablas, relaciones y vistas.

3. Abre y ejecuta el archivo **`Script simulacion.sql`**. Este script insertará todos los datos de prueba necesarios para probar el sistema y generar los reportes.

**Opción 2: Restauración desde archivo único**

1. Abre MySQL Workbench y conéctate a tu servidor local.

2. Abre y ejecuta el archivo **`SeeleDB-Backup.sql`**. Este archivo contiene de forma unificada tanto la estructura (DDL) como los datos (DML) de la base de datos.

*Nota sobre la cadena de conexión:* Por defecto, el sistema intentará conectarse usando la cadena `Server=localhost;Port=3306;Database=seele;User ID=root;Password=root;SslMode=None;AllowPublicKeyRetrieval=True;CharSet=utf8mb4`. Si tu instancia de MySQL Workbench tiene un nombre específico , asegúrate de que el alias local `.` apunte correctamente a ella.

### 1.3 Ejecutar el programa

Una vez restaurada la base de datos, no es necesario abrir Visual Studio ni compilar el código para probar el sistema:

1. Navega hasta la carpeta del entregable.

2. Ingresa a la ruta: `..\Entrega\Programa\Ejecutable\`

3. Haz doble clic en el archivo **`vista.exe`** para iniciar el sistema.

4. Desde el menú principal podrás acceder a Clientes, Prendas, Ventas, Facturas y Reportes.
