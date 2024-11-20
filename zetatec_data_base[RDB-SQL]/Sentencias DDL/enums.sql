-- TABLA MATERIALES
CREATE TYPE formato_material AS ENUM ('chapa', 'cobre', 'lingote', 'alambre', 'barra redonda', 'cinta');
CREATE TYPE tipo_material AS ENUM ('cobre', 'latón', 'aluminio', 'bismuto', 'cobalto', 'acero', 'ferrita', 'neodimio');
CREATE TYPE med_ref_material AS ENUM ('0,5mm', '0,6mm', '0,7mm', '0,8mm', '1mm', '1,2mm', '1,5mm', '1,6mm', '2mm', '9,5mm', '12,7mm', '15,8mm', '20mm', 'unidad', 'gramos', '9,5mm');

-- TABLA INVENTARIO
CREATE TYPE tipo_item_inventario AS ENUM ('producto', 'servicio', 'servicio de envio', 'materia prima', 'no inventario');
CREATE TYPE unidad_peso_item AS ENUM ('kg', 'gr');

-- TABLA HIST_PROD_CONSULTADOS
CREATE TYPE motivo_consulta AS ENUM ('por stock', 'si es producto oficial');

-- TABLA SERV_ENV
CREATE TYPE tipo_serv_env AS ENUM ('domicilio', 'sucursal');
CREATE TYPE empresa_encomienda AS ENUM ('correo argentino', 'andreani', 'oca');

-- TABLAS DETALLE_PRESUPUESTOS / DETALLE_COMPRAS
CREATE TYPE unidad_venta_prov AS ENUM ('kg', 'unidad');

-- TABLAS PRECIOS_PRODUCTOS
CREATE TYPE listas_de_precios AS ENUM ('catalogo', 'mercado libre');

-- TABLAS COMPROBANTES_FISCALES
CREATE TYPE tipos_comprobantes_fiscales AS ENUM ('factura b', 'nota de credito c', 'factura c',);
