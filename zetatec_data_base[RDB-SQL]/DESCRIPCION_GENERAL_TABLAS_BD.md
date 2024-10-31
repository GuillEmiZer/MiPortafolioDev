# Descripción General de las Tablas

A continuación se detallan las descripciones generales de las tablas disponibles en la base de datos en orden alfabético:

## C

### 1. Clientes
- **Tipo:** Datos
- **Descripción:** Personas, organizaciones y empresas que compran los productos que vendemos. Tabla que utilizamos para identificar inequívocamente a cada cliente en nuestras operatorias de pedidos y ventas, almacenando sus datos básicos y asociándolos a sus diferentes conjuntos de datos almacenados en otras tablas.

### 2. Compras de Materias Primas
- **Tipo:** Datos
- **Descripción:** Compras de materias primas por mayor que realizamos a nuestros proveedores. Información importante para calcular costes de los productos por mayor por unidad, para realizar seguimientos sobre el aumento de los precios de las materias primas y para la elaboración de informes sobre los materiales adquiridos.

### 3. Comprobantes Fiscales
- **Tipo:** Datos
- **Descripción:** Registros de los comprobantes fiscales emitidos por el negocio. Se utilizan para validar las ventas, cancelaciones y devoluciones realizadas, asegurando su adecuada declaración ante la AFIP y el cumplimiento de las obligaciones fiscales correspondientes.

## D

### 7. Datos Bancarios de Proveedores
- **Tipo:** -
- **Descripción:** Descripción pendiente

### 9. Datos de Facturación de Clientes
- **Tipo:** Datos
- **Descripción:** Datos de facturación suministrados por nuestros clientes para la emisión de los comprobantes fiscales asociados a las compras que nos realizan. La precisión y organización de esta información son fundamentales, ya que cada cliente puede tener uno o varios conjuntos de datos de facturación.

### 11. Detalle de Compras
- **Tipo:** -
- **Descripción:** Descripción pendiente

### 12. Detalle de Pedidos
- **Tipo:** -
- **Descripción:** Descripción pendiente

### 13. Detalle de Presupuestos
- **Tipo:** -
- **Descripción:** Descripción pendiente

## E

### 18. Empleados
- **Tipo:** Datos
- **Descripción:** Personas que trabajan para nuestro negocio. Esta tabla es fundamental para la identificación del personal, para la asignación de tareas y responsabilidades dentro de la organización, y para disponer de datos básicos de contacto.

### 19. Envíos
- **Tipo:** Datos
- **Descripción:** Paquetes enviados a clientes a través de empresas de encomiendas. La información almacenada en esta tabla nos permite controlar los tiempos de entrega, monitorear el estado de los envíos, realizar seguimiento online del paquete, identificar a los responsables de las entregas para evaluar su desempeño, mejorar el proceso de embalaje, controlar la precisión de las etiquetas y gestionar incidencias como pérdidas o daños en el envío.

## H

### 20. Historial de Productos Consultados
- **Tipo:** Datos
- **Descripción:** Productos consultados por clientes y posibles compradores, que pueden o no formar parte de nuestro actual inventario. Datos que nos sirven para realizar informes que nos permiten mejorar las inversiones de nuestro capital.

## I

### 22. Inventario
- **Tipo:** -
- **Descripción:** Descripción pendiente

## M

### 23. Materiales
- **Tipo:** -
- **Descripción:** Descripción pendiente

### 24. Materias Primas
- **Tipo:** Datos
- **Descripción:** Esta tabla registra los productos adquiridos a proveedores para su posterior procesamiento y comercialización. La información almacenada es crucial para identificar de manera precisa los productos obtenidos en las Compras por Mayor, actualizar los costos mayoristas por unidad utilizados en el cálculo de precios de venta, y gestionar consultas de presupuestos con los proveedores actuales de cada producto.

## O

## P

### 26. Pagos del Clientes
- **Tipo:** Datos
- **Descripción:** Detalles de los pagos realizados por nuestros clientes para abonar los productos y servicios solicitados. Almacenamos esta información para calcular impuestos y comisiones aplicables, así como para verificar la correspondencia entre el monto total de los pagos y el precio final de los productos y servicios adquiridos.

### 27. Pedidos
- **Tipo:** Datos
- **Descripción:** Evento en el que los vendedores registran el conjunto de productos y servicios solicitados por nuestros clientes para su posterior venta. Almacenamos esta información para facilitar el seguimiento detallado de los pedidos por parte de los vendedores y para vincularlos con otras actividades, como el control de inventario, las reservas, la preparación de órdenes, la facturación y el seguimiento de envíos.

### 29. Presupuestos de Proveedores
- **Tipo:** Datos
- **Descripción:** Presupuestos realizados por nuestros proveedores y potenciales proveedores sobre las materias primas que consideramos adquirir. Utilizamos esta información para comparar precios entre diferentes ofertas y para rastrear posibles aumentos en los costos de las materias primas.

### 32. Proveedores
- **Tipo:** Datos
- **Descripción:** Empresas proveedoras de las materias primas que adquirimos. Almacenamos información relevante para el contacto, ubicación de sucursales, coordinación de entregas y propósitos fiscales.

## S

### 36. Servicios de envío
- **Tipo:** -
- **Descripción:** Descripción pendiente

## U

### 40. Usuarios de los Clientes
- **Tipo:** Datos
- **Descripción:** Nombres de usuarios que los clientes registraron en cada una de las plataformas online desde la que nos compran productos. Es importante almacenar este dato para evitar duplicar clientes en nuestra base de datos dado que un mismo cliente puede tener múltiples usuarios.

## V

### 42. Ventas
- **Tipo:** Datos
- **Descripción:** Registros de las operaciones comerciales en las que transferimos bienes y servicios a clientes a cambio de un pago monetario. Almacenamos esta información para realizar un seguimiento detallado del estado de las ventas, gestionar modificaciones, generar informes, asociarlas a documentación fiscal y administrar eficazmente el inventario.

### 43. Comprobantes Fiscales de las Ventas
- **Tipo:** -
- **Descripción:** Descripción pendiente
