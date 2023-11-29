# BASE DE DATOS DE ZETATEC

**Nota 1:** El presente proyecto de Base de Datos se encuentra en desarrollo. 

**Nota 2:** La presente Base de Datos responde a requerimientos de información de un emprendimiento real. 

**Nota 3:** El primer archivo que voy a dejar en este proyecto es un Diagrama con el Modelado de la Base de Datos. Dicho documento está sujeto a modificaciones dado que todavía sigo aprendiendo/puliendo detalles sobre cómo diseñar este tipo de software.

**Nota 4:** Una vez tenga la versión final del modelado lógico y físico, cargaré al proyecto las sentencias SQL para la creación y consulta de la BDR.

---

## MODELO DE NEGOCIO / REQUERIMIENTOS DE INFORMACIÓN

Zeta Tec es un negocio de comercio electrónico especializado en la venta minorista de metales no ferrosos. La base de datos tiene como objetivo llevar un registro de:

- **PRODUCTOS VENDIDOS**
- **PRODUCTOS COMPRADOS**
- **PROVEEDORES**
- **CLIENTES**
- **PEDIDOS Y VENTAS**
- **FACTURAS Y NOTAS DE CRÉDITO**
- **PAGOS Y MEDIOS DE PAGO**
- **ENVIOS Y EMPRESAS DE ENCOMIENDA**
- **CANCELACIONES Y DEVOLUCIONES**
- **TOTAL MENSUAL FACTURADO POR JURISDICCIÓN (ARGENTINA)**

---

### Detalles de la Base de Datos

Para esta Base de Datos, no se requiere ningún sistema de gestión de stock ni sistema de gestión de empleados. Se espera recopilar información sobre:

#### CLIENTES

- Nombre completo
- DNI
- CUIT
- Dirección
- Condición frente al IVA

Estos datos, además de servir como identificación del cliente, también son utilizados para la facturación. Tener en cuenta que los datos de DNI/CUIT/dirección/condición IVA pueden cambiar en cada compra.

#### PROVEEDORES

- Nombre completo
- CUIT
- Teléfono
- Dirección

#### COMPRAS POR MAYOR

- Fecha de compra
- Dólar oficial
- Dólar paralelo
- Costo logístico
- Costo de producción estimado
- Producto por mayor adquirido
- Unidades
- Precio unitario en dólares (a cambio oficial, este dato puede no estar disponible en cada compra)
- Precio total del producto adquirido
- Kilogramos de material

#### PRODUCTOS

- SKU del producto
- Nombre
- Formato del material
- Tipo de material
- Proveedor
- Precio

Sobre este último, considerar que hay al menos tres listas de precios diferentes.

#### PEDIDOS Y VENTAS

- Fecha del pedido
- Fecha del cierre (venta)
- Cliente
- Plataforma de venta (redes sociales, comercio electrónico)
- Jurisdicción
- Descuentos generales al pedido/venta en porcentaje (si corresponde)
- Descuento en importes fijos al pedido/venta (si corresponde)
- Productos vendidos (cantidades y precios)
- Descuentos en porcentaje y monto fijo por cada producto.

#### PAGOS

- Fecha
- Medio de pago
- Códigos de operación de plataformas externas (bancos, plataformas de comercio electrónico, etc.)
- Monto

#### FACTURACIÓN Y NOTAS DE CRÉDITO

- Números de facturas y notas de crédito.

#### ENVIOS

- Número de seguimiento
- Empresa de encomienda
- Número de seguimiento
- Página web de seguimiento del envío.

#### CANCELACIONES

Las cancelaciones se aplican generalmente a las ventas o a los pedidos. Es importante remarcar o incluir la factura correspondiente en caso de que se haya emitido, ya que es necesario realizar la nota de crédito correspondiente.