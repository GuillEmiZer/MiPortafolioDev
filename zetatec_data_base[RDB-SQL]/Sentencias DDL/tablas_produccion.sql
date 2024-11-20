
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
