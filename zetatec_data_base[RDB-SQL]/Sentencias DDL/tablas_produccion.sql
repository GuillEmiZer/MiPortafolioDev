
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
    id_tem serial PRIMARY KEY,
    sku_item character varying(20),
    tipo_item tipo_item_inventario NOT NULL,
    nombre_item character varying(50) NOT NULL,
    unid_peso unidad_peso_item,
    cant_peso numeric(10, 2),
    desc_item character varying(50),  
    id_mat integer,
    FOREIGN KEY (id_mat) REFERENCES produccion."MATERIALES" (id_mat) ON DELETE RESTRICT
);
