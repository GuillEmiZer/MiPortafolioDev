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

-- TABLA PRECIOS_PRODUCTOS
CREATE TYPE listas_de_precios AS ENUM ('catalogo', 'mercado libre');

-- TABLA COMPROBANTES_FISCALES
CREATE TYPE tipos_comprobantes_fiscales AS ENUM ('factura b', 'nota de credito c', 'factura c',);

-- TABLA EMPRESAS_ENCOMIENDAS
CREATE TYPE tipos_empresas_encomiendas AS ENUM ('correo', 'mensajería moto', 'encomienda micro',);

-- TABLA CLIENTES
CREATE TYPE tipos_documentos_identidad AS ENUM ('dni', 'cuit');

-- TABLA DATOS_FAC_CLI
CREATE TYPE condicion_frente_iva AS ENUM ('consumidor final', 'responsable inscripto','responsable monotributo', 'iva excepto');

-- TABLA DATOS_ENV_CLI
CREATE TYPE tipo_dato_envio AS ENUM ('Principal', 'secundario');

-- ENUM DE PLATAFORMAS DE VENTA Y ATENCIÓN
CREATE TYPE plataformas_venta_atencion AS ENUM ('whatsapp', 'mercado libre', 'facebook');

-- TABLA PEDIDOS
CREATE TYPE estado_pedido AS ENUM ('abierto', 'cerrado', 'cancelado');
CREATE TYPE tipo_descuento AS ENUM ('porcentual', 'fijo');

-- ENUM DE JURISDICCIONES IMPOSITIVAS
CREATE TYPE jurisdicciones_impositivas AS ENUM ('caba', 'buenos aires', 'catamarca', 'chaco', 'chubut', 'cordoba', 'corrientes', 'entre rios', 'formosa', 'jujuy', 'la pampa', 'la rioja', 'mendoza', 'misiones', 'neuquen', 'rio negro', 'salta', 'san juan', 'san luis', 'santa cruz', 'santa fe', 'santiago del estero', 'tierra del fuego', 'tucuman');

-- TABLA ENVIOS
CREATE TYPE estado_envio AS ENUM ('despachado', 'entregado', 'cancelado', 'perdido', 'retornando', 'en sucursal destino', 'en sucursal remitente');

-- TABLA VENTAS
CREATE TYPE estado_venta AS ENUM ('cerrada', 'cancelada'); 

-- TABLA COMPROBANTES FISCALES
CREATE TYPE ref_internas_comprobantes_fiscales AS ENUM ('compra materias primas', 'ventas'); 
