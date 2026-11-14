# API REST - Tienda Perú

## Descripción

Este proyecto fue desarrollado para el curso de JavaScript en el Backend. Es una API REST creada con Node.js, Express y MySQL para gestionar los productos, clientes y proveedores de una tienda.

Se inició con el módulo de productos desarrollado en clase y posteriormente se agregaron los módulos de clientes y proveedores.

## Tecnologías utilizadas

- Node.js
- Express
- MySQL
- mysql2
- dotenv
- XAMPP
- Postman

## Estructura del proyecto

- database: contiene el archivo db.sql con la base de datos y las tablas.
- src/config: contiene la configuración de la conexión a MySQL.
- src/controllers: contiene las funciones de cada módulo.
- src/routes: contiene las rutas de cada módulo y el archivo index.js que las reúne.
- src/app.js: configura la aplicación.
- src/server.js: inicia el servidor.

## Base de datos

La base de datos se llama tiendaperu y contiene tres tablas:

- productos: almacena el ID, marca, descripción, precio y stock.
- clientes: almacena el ID, apellidos, nombres, teléfono, dirección y correo electrónico.
- proveedores: almacena el ID, razón social, contacto, RUC y dirección.

Las tablas de clientes y proveedores tienen tres registros de prueba cada una.

El archivo database/db.sql contiene el script para crear la base de datos y sus tablas.

## Rutas

Las rutas son iguales en los 3 módulos. Solo cambia la palabra del final: productos, clientes o proveedores.

**Productos**

- GET /api/productos: lista todos.
- GET /api/productos/1: busca uno por su ID.
- POST /api/productos: registra uno nuevo (los datos van en el body, en formato JSON).
- PUT /api/productos/1: actualiza uno.
- DELETE /api/productos/1: elimina uno.

**Clientes**

- GET /api/clientes: lista todos.
- GET /api/clientes/1: busca uno por su ID.
- POST /api/clientes: registra uno nuevo (los datos van en el body, en formato JSON).
- PUT /api/clientes/1: actualiza uno.
- DELETE /api/clientes/1: elimina uno.

**Proveedores**

- GET /api/proveedores: lista todos.
- GET /api/proveedores/1: busca uno por su ID.
- POST /api/proveedores: registra uno nuevo (los datos van en el body, en formato JSON).
- PUT /api/proveedores/1: actualiza uno.
- DELETE /api/proveedores/1: elimina uno.

## Respuestas de la API

- 200: la operación se realizó correctamente.
- 201: el registro se creó correctamente.
- 400: los datos enviados son incorrectos o faltan datos.
- 404: no se encontró el registro solicitado.
- 500: ocurrió un error en el servidor.

## Pruebas

Se utilizó Postman para comprobar las operaciones de registro, consulta, modificación y eliminación de productos, clientes y proveedores.

## Autor

Susana Atuncar Pasache

