
-- Crear tabla "MATERIALES"
CREATE TABLE IF NOT EXISTS produccion."MATERIALES"
(
    id_mat serial PRIMARY KEY,
    formato_mat formato_material NOT NULL,
    tipo_mat tipo_material NOT NULL,
    med_ref_mat med_ref_material NOT NULL
);

-- Crear tabla "INVENTARIO"
CREATE TABLE IF NOT EXISTS produccion."INVENTARIO"
(
    id_item serial PRIMARY KEY,
    sku_item character varying(20),
    tipo_item tipo_item_inventario NOT NULL,
    nombre_item character varying(50) NOT NULL,
    unid_peso unidad_peso_item,
    cant_peso numeric(10, 2),
    desc_item character varying(50),  
    id_mat integer,
    FOREIGN KEY (id_mat) REFERENCES produccion."MATERIALES" (id_mat) ON DELETE RESTRICT
);

-- Crear tabla "HIST_PROD_CONSULTADOS"
CREATE TABLE IF NOT EXISTS produccion."HIST_PROD_CONSULTADOS"
(
    id_prod_consulta serial PRIMARY KEY,
    motivo_consulta motivo_consulta NOT NULL,
    fec_prod_consulta date NOT NULL, 
    dec_prod_consulta character varying(100),
    id_item integer NOT NULL,
    FOREIGN KEY (id_item) REFERENCES produccion."INVENTARIO" (id_item) ON DELETE RESTRICT
);

-- Crear tabla "SERV_ENV"
CREATE TABLE IF NOT EXISTS produccion."SERV_ENV"
(
    id_item integer PRIMARY KEY,
    tipo_serv_env tipo_serv_env NOT NULL,
    empresa_encomienda empresa_encomienda NOT NULL,
    FOREIGN KEY (id_item) REFERENCES produccion."INVENTARIO" (id_item) ON DELETE RESTRICT
);

-- Crear tabla "PROVEEDORES"
CREATE TABLE IF NOT EXISTS produccion."PROVEEDORES"
(
    id_prov serial PRIMARY KEY,
    nombre_prov CHARACTER VARYING(50) NOT NULL,
    cuit_prov CHARACTER VARYING(15) NOT NULL,
    tel_prov CHARACTER VARYING(15),
    tel_alter_prov CHARACTER VARYING(15),
    cel_prov CHARACTER VARYING(15),
    email_prov CHARACTER VARYING(50),
    web_prov CHARACTER VARYING(30),
    calle_altura_prov CHARACTER VARYING(30),
    localidad_prov CHARACTER VARYING(30),
    provincia_prov CHARACTER VARYING(30),
    cp_prov CHARACTER VARYING(10)
);

-- Crear tabla "COMPROBANTES_FISCALES"
CREATE TABLE IF NOT EXISTS produccion."COMPROBANTES_FISCALES"
(
    id_comprobante_fiscal serial PRIMARY KEY,
    tipo_comprobante_fiscal tipos_comprobantes_fiscales NOT NULL,  
    ref_interna_comprobante_fiscal CHARACTER VARYING(30),
    num_comprobante_fiscal CHARACTER VARYING(30) NOT NULL,
    fec_comprobante_fiscal date NOT NULL,
    url_comprobante_fiscal CHARACTER VARYING(50)
);

-- Crear tabla "PRESUPUESTOS_PROV"
CREATE TABLE IF NOT EXISTS produccion."PRESUPUESTOS_PROV"
(
    id_presupuesto_prov serial PRIMARY KEY,
    fec_presupuesto_prov date NOT NULL,
    cambio_oficial_presupuesto_prov NUMERIC(10,2) NOT NULL,
    cambio_paralelo_presupuesto_prov NUMERIC(10,2) NOT NULL,
    id_prov integer NOT NULL,
    FOREIGN KEY (id_prov) REFERENCES produccion."PROVEEDORES" (id_prov) ON DELETE RESTRICT
);

-- Crear tabla "DETALLE_PRESUPUESTOS" (ver posible error de coma luego de primer fk)
CREATE TABLE IF NOT EXISTS produccion."DETALLE_PRESUPUESTOS"
(
    id_detalle_pre serial PRIMARY KEY,
    unid_venta_prov_detalle_pre unidad_venta_prov,
    precio_unid_venta_detalle_pre numeric(10, 2),
    id_item integer NOT NULL,
    id_presupuesto_prov integer NOT NULL,
    FOREIGN KEY (id_item) REFERENCES produccion."INVENTARIO" (id_item) ON DELETE RESTRICT,
    FOREIGN KEY (id_presupuesto_prov) REFERENCES produccion."PRESUPUESTOS_PROV" (id_presupuesto_prov) ON DELETE RESTRICT
);

-- Crear tabla "COMPRAS_PROV"
CREATE TABLE IF NOT EXISTS produccion."COMPRAS_PROV"
(
    id_compra_prov serial PRIMARY KEY,
    fec_compra date NOT NULL,
    cambio_oficial_compra NUMERIC(10,2) NOT NULL,
    cambio_paralelo_compra NUMERIC(10,2) NOT NULL,
    coste_logistico_compra NUMERIC(10,2) NOT NULL,
    coste_produccion_compra NUMERIC(10,2) NOT NULL,
    id_comprobante_fiscal INTEGER,
    id_prov INTEGER NOT NULL,
    FOREIGN KEY (id_comprobante_fiscal) REFERENCES produccion."COMPROBANTES_FISCALES" (id_comprobante_fiscal) ON DELETE RESTRICT,
    FOREIGN KEY (id_prov) REFERENCES produccion."PROVEEDORES" (id_prov) ON DELETE RESTRICT
);

-- Crear tabla "DETALLE_COMPRAS"
CREATE TABLE IF NOT EXISTS produccion."DETALLE_COMPRAS"
(
    id_detalle_compra serial PRIMARY KEY,
    unid_venta_prov_detalle_compra unidad_venta_prov NOT NULL,
    precio_venta_prov_detalle_compra NUMERIC(10,2) NOT NULL,
    cant_detalle_compra INTEGER NOT NULL,  
    id_item INTEGER NOT NULL, 
    id_compra INTEGER NOT NULL,
    FOREIGN KEY (id_item) REFERENCES produccion."INVENTARIO" (id_item) ON DELETE RESTRICT,
    FOREIGN KEY (id_compra) REFERENCES produccion."COMPRAS_PROV" (id_compra_prov) ON DELETE RESTRICT
);

-- Crear tabla "DATOS_BANCARIOS_PROV"
CREATE TABLE IF NOT EXISTS produccion."DATOS_BANCARIOS_PROV"
(
    id_data_banc_prov serial PRIMARY KEY,
    cuit_data_banc_prov CHARACTER VARYING(15) NOT NULL,
    titular_data_banc_prov CHARACTER VARYING(30) NOT NULL,
    cbu_cvu_data_banc_prov CHARACTER VARYING(30),
    alias_bancario_data_banc_prov CHARACTER VARYING(30),
    entidad_data_banc_prov CHARACTER VARYING(30),
    id_prov INTEGER NOT NULL,
    FOREIGN KEY (id_prov) REFERENCES produccion."PROVEEDORES" (id_prov) ON DELETE RESTRICT
);

-- Crear tabla "PRECIOS_PRODUCTOS"
CREATE TABLE IF NOT EXISTS produccion."PRECIOS_PRODUCTOS"
(
    id_precio_prod serial PRIMARY KEY,
    lista_de_precios listas_de_precios NOT NULL,
    precio NUMERIC(10,2) NOT NULL,
    id_item INTEGER NOT NULL, 
    FOREIGN KEY (id_item) REFERENCES produccion."INVENTARIO" (id_item) ON DELETE RESTRICT
);

-- PENDIENTE PRODUCCION

-- Crear tabla "EMPRESAS_ENCOMIENDAS"
CREATE TABLE IF NOT EXISTS produccion."EMPRESAS_ENCOMIENDAS"
(
    id_emp_encomi serial PRIMARY KEY,
    nombre_emp_encomi CHARACTER VARYING(30) NOT NULL,
    web_seguimiento_emp_encomi CHARACTER VARYING(50),
    cel_emp_encomi CHARACTER VARYING(20),
    tel_emp_encomi CHARACTER VARYING(20),
    web_emp_encomi CHARACTER VARYING(50),
    tipo_emp_encomi tipos_empresas_encomiendas
);

-- Crear tabla "CLIENTES"
CREATE TABLE IF NOT EXISTS produccion."CLIENTES"
(
    id_cli serial PRIMARY KEY,
    nombre_cli CHARACTER VARYING(30) NOT NULL,
    tipo_doc_cli tipos_documentos_identidad,
    num_doc_cli CHARACTER VARYING(20),
    cel_cli CHARACTER VARYING(20),
    tel_cli CHARACTER VARYING(20),
    email_cli CHARACTER VARYING(30)
);

-- Crear tabla "DATOS_FAC_CLI"
CREATE TABLE IF NOT EXISTS produccion."DATOS_FAC_CLI"
(
   id_datos_fac_cli serial PRIMARY KEY, 
   tipo_doc_datos_fac_cli tipos_documentos_identidad NOT NULL,
   num_doc_datos_fac_cli CHARACTER VARYING(20) NOT NULL,
   condicion_iva_datos_fac_cli condicion_frente_iva NOT NULL,
   calle_altura_datos_fac_cli CHARACTER VARYING(30),
   localidad_datos_fac_cli CHARACTER VARYING(30),
   provincia_datos_fac_cli CHARACTER VARYING(30),
   cp_datos_fac_cli CHARACTER VARYING(10),
   id_cli INTEGER NOT NULL,
   FOREIGN KEY (id_cli) REFERENCES produccion."CLIENTES" (id_cli) ON DELETE RESTRICT
);

-- Crear tabla "DATOS_ENV_CLI"
CREATE TABLE IF NOT EXISTS produccion."DATOS_ENV_CLI"
(
    id_datos_env_cli serial PRIMARY KEY, 
    tipo_datos_env_cli tipo_dato_envio NOT NULL,
    calle_altura_datos_env_cli CHARACTER VARYING(30) NOT NULL,
    localidad_datos_env_cli CHARACTER VARYING(30) NOT NULL,
    provincia_datos_env_cli CHARACTER VARYING(30) NOT NULL,
    piso_datos_env_cli CHARACTER VARYING(10),
    dto_datos_env_cli CHARACTER VARYING(10),
    cp_datos_env_cli CHARACTER VARYING(10),
    referencia_datos_env_cli CHARACTER VARYING(100),
    id_cli INTEGER NOT NULL,
    FOREIGN KEY (id_cli) REFERENCES produccion."CLIENTES" (id_cli) ON DELETE RESTRICT 
);

-- Crear tabla "USUARIOS_CLI"
CREATE TABLE IF NOT EXISTS produccion."USUARIOS_CLI"
(
   id_usuario_cli serial PRIMARY KEY,
   plataforma_usuario_cli plataformas_venta_atencion NOT NULL,
   id_cli INTEGER NOT NULL,
   FOREIGN KEY (id_cli) REFERENCES produccion."CLIENTES" (id_cli) ON DELETE RESTRICT
);

-- Crear tabla "EMPLEADOS"
CREATE TABLE IF NOT EXISTS produccion."EMPLEADOS"
(
    id_emp serial PRIMARY KEY,
    nombre_completo_emp CHARACTER VARYING(30) NOT NULL,
    cel_emp CHARACTER VARYING(20) NOT NULL,
    email_emp CHARACTER VARYING(40),
    cuil_emp CHARACTER VARYING(20) NOT NULL,
    calle_altura_emp CHARACTER VARYING(40),
    localidad_emp CHARACTER VARYING(40),
    cp_emp CHARACTER VARYING(10),
    alias_bancario_emp CHARACTER VARYING(30),
    entidad_bancaria_emp CHARACTER VARYING(30)
);

-- Crear tabla "PEDIDOS"
CREATE TABLE IF NOT EXISTS produccion."PEDIDOS"
(
    id_pedido serial PRIMARY KEY,
    fec_pedido date NOT NULL,
    plataforma_pedido plataformas_venta_atencion NOT NULL,
    estado_pedido estado_pedido NOT NULL,
    tipo_desct_pedido tipo_descuento,
    monto_desct_pedido NUMERIC(10,2),
    desc_pedido CHARACTER VARYING(100),
    concepto_fac_pedido condicion_frente_iva,
    jurisdiccion_pedido jurisdicciones_impositivas NOT NULL,
    id_cli INTEGER NOT NULL, 
    id_emp INTEGER NOT NULL,
    id_datos_env_cli INTEGER,
    id_datos_fac_cli INTEGER,
    id_usuario_cli INTEGER,
    FOREIGN KEY (id_cli) REFERENCES produccion."CLIENTES" (id_cli) ON DELETE RESTRICT,
    FOREIGN KEY (id_emp) REFERENCES produccion."EMPLEADOS" (id_emp) ON DELETE RESTRICT,
    FOREIGN KEY (id_datos_env_cli) REFERENCES produccion."DATOS_ENV_CLI" (id_datos_env_cli) ON DELETE RESTRICT,
    FOREIGN KEY (id_datos_fac_cli) REFERENCES produccion."DATOS_FAC_CLI" (id_datos_fac_cli) ON DELETE RESTRICT,
    FOREIGN KEY (id_usuario_cli) REFERENCES produccion."USUARIOS_CLI" (id_usuario_cli) ON DELETE RESTRICT
);

-- Crear tabla "ENVIOS"
CREATE TABLE IF NOT EXISTS produccion."ENVIOS"
(
    id_envio serial PRIMARY KEY,
    tipo_envio tipo_serv_env NOT NULL,
    fec_despacho date NOT NULL,
    num_seguimiento CHARACTER VARYING(50),
    estado_envio estado_envio NOT NULL,
    id_emp_encomi INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
    FOREIGN KEY (id_emp_encomi) REFERENCES produccion."EMPRESAS_ENCOMIENDAS" (id_emp_encomi) ON DELETE RESTRICT,
    FOREIGN KEY (id_pedido) REFERENCES produccion."PEDIDOS" (id_pedido) ON DELETE RESTRICT
);

-- Crear tabla "DETALLE_PEDIDOS"
CREATE TABLE IF NOT EXISTS produccion."DETALLE_PEDIDOS"
(
    id_detalle_pedido serial PRIMARY KEY,
    cant_detalle_pedido INTEGER NOT NULL,
    tipo_desct_detalle_pedido tipo_descuento,
    valor_desct_detalle_pedido NUMERIC(10,2),
    id_precio_prod INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
    FOREIGN KEY (id_precio_prod) REFERENCES produccion."PRECIOS_PRODUCTOS" (id_precio_prod) ON DELETE RESTRICT,
    FOREIGN KEY (id_pedido) REFERENCES produccion."PEDIDOS" (id_pedido) ON DELETE RESTRICT
);

-- Crear tabla "CARGOS"
CREATE TABLE IF NOT EXISTS produccion."CARGOS"
(
    id_cargo serial PRIMARY KEY,
    nombre_cargo CHARACTER VARYING(30)
);

-- Crear tabla "CARGOS_EMP"
CREATE TABLE IF NOT EXISTS produccion."CARGOS_EMP"
(
    id_cargo INTEGER NOT NULL,
    id_emp INTEGER NOT NULL,
    fecha_asignacion DATE NOT NULL,
    PRIMARY KEY (id_cargo, id_emp),
    FOREIGN KEY (id_cargo) REFERENCES produccion."CARGOS" (id_cargo) ON DELETE CASCADE,
    FOREIGN KEY (id_emp) REFERENCES produccion."EMPLEADOS" (id_emp) ON DELETE CASCADE
);

-- Crear tabla "VENTAS"
CREATE TABLE IF NOT EXISTS produccion."VENTAS"
(
    id_venta serial PRIMARY KEY,
    fec_venta date NOT NULL,
    estado_venta estado_venta NOT NULL,
    desc_venta CHARACTER VARYING(100),
    id_pedido INTEGER NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES produccion."PEDIDOS" (id_pedido) ON DELETE RESTRICT 
);

-- Crear tabla "VENTAS_COMP_FISC"
CREATE TABLE IF NOT EXISTS produccion."VENTAS_COMP_FISC"
(
    id_venta INTEGER NOT NULL,
    id_comprobante_fiscal INTEGER NOT NULL,
    fecha_venta_comp_fisc date NOT NULL,
    PRIMARY KEY (id_venta, id_comprobante_fiscal),
    FOREIGN KEY (id_venta) REFERENCES produccion."VENTAS" (id_venta) ON DELETE CASCADE,
    FOREIGN KEY (id_comprobante_fiscal) REFERENCES produccion."COMPROBANTES_FISCALES" (id_comprobante_fiscal) ON DELETE CASCADE
);

-- Crear tabla "COMPROBANTES_FISCALES"
CREATE TABLE IF NOT EXISTS produccion."COMPROBANTES_FISCALES"
(
    id_comprobante_fiscal serial PRIMARY KEY,
    tipo_comprobante_fiscal tipos_comprobantes_fiscales NOT NULL,
    ref_interna_comprobante_fiscal ref_internas_comprobantes_fiscales NOT NULL,
    num_comprobante_fiscal CHARACTER VARYING(40) NOT NULL,
    fec_comprobante_fiscal date NOT NULL,
    url_comprobante_fiscal CHARACTER VARYING(50)
);
