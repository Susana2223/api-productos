//Nuestra aplicación puede tener muchos módulos:
//Productos > producto.controller > producto.routes
//Clientes > clientes.controller > cliente.routes
//Proveedores > proveedor.controller > proveedor.routes

//Todas las rutas se organizan gracias a index.js (indice)
const { Router } = require('express')

//Esto se realiza por cada routes **
const ProductoRoutes = require('./producto.routes')
const ClienteRoutes = require('./cliente.routes')
const ProveedorRoutes = require('./proveedor.routes')

//Esto es solo es uno para todas las rutas
const router = Router()

//Esto es por cada routes **
router.use('/productos', ProductoRoutes)
router.use('/clientes', ClienteRoutes)
router.use('/proveedores', ProveedorRoutes)

//Se exportan todas las rutas
module.exports = router