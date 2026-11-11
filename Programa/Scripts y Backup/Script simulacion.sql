-- =====================================================================
-- 1. AMPLIACIÓN DE CLIENTES (Sumamos 40 clientes realistas)
-- =====================================================================
use seele;
INSERT INTO Cliente (NRO_DOC_CLIENTE, ID_TIPO_DOC, APELLIDO_CLIENTE, NOM_CLIENTE, EMAIL_CLIENTE, DOM_FACT_CLIENTE) VALUES
 ('40111222', 1, 'Martínez', 'Nicolás', 'nico.martinez@mail.com', 'Boedo 150, Lomas de Zamora'),
 ('38999111', 1, 'Herrera', 'Camila', 'cami.herrera@mail.com', 'Uriarte 1200, Palermo'),
 ('23401234569', 2, 'Giménez', 'Esteban', 'esteban.gimenez@mail.com', 'Av. San Martín 500, Caseros'),
 ('39222333', 1, 'Ríos', 'Julieta', 'juli.rios@mail.com', 'Calle 8 Nro 1200, La Plata'),
 ('34555666', 1, 'Molina', 'Andrés', 'andres.molina@mail.com', 'Av. Maipú 800, Vicente López'),
 ('31222444', 1, 'Castro', 'Mariano', 'm.castro@mail.com', 'Garibaldi 45, Quilmes'),
 ('42333555', 1, 'Sosa', 'Florencia', 'flor.sosa@mail.com', 'Paso 150, Temperley'),
 ('37888123', 1, 'Silva', 'Ignacio', 'isilva@mail.com', 'Gorriti 400, Lomas de Zamora'),
 ('39000123', 1, 'Ramos', 'Victoria', 'vicky.ramos@mail.com', 'Alsina 890, Avellaneda'),
 ('20381112225', 2, 'Vega', 'Cristian', 'c.vega@mail.com', 'Belgrano 1200, Banfield'),
 ('41555666', 1, 'Navarro', 'Paula', 'paula.n@mail.com', 'San Martín 330, Lanús'),
 ('35666777', 1, 'Paz', 'Emilio', 'emilio.paz@mail.com', 'Cerrito 250, CABA'),
 ('32888999', 1, 'Ibáñez', 'Romina', 'romi.ibanez@mail.com', 'Santa Fe 1400, CABA'),
 ('27331112229', 3, 'Ruiz', 'Marcos', 'marcos.r@mail.com', 'Maipú 110, Adrogué'),
 ('40999000', 1, 'Rojas', 'Micaela', 'mica.rojas@mail.com', 'Alvear 500, Quilmes'),
 ('36111333', 1, 'Flores', 'Lucas', 'lucas.flores@mail.com', 'Rivadavia 2200, CABA'),
 ('39444555', 1, 'Morales', 'Jazmín', 'jaz.morales@mail.com', 'Mitre 600, Avellaneda'),
 ('34222111', 1, 'Ortiz', 'Gonzalo', 'gonza.ortiz@mail.com', 'French 300, Banfield'),
 ('37555666', 1, 'Medina', 'Agustina', 'agus.medina@mail.com', 'Laprida 900, Lomas de Zamora'),
 ('20359998881', 2, 'Luna', 'Santiago', 'santi.luna@mail.com', 'Lavalle 150, CABA'),
 ('38111444', 1, 'Domínguez', 'Rocío', 'rocio.d@mail.com', '9 de Julio 1500, Lanús'),
 ('43222333', 1, 'Cruz', 'Tomás', 'tomas.cruz@mail.com', 'Pueyrredón 800, CABA'),
 ('36999111', 1, 'Vargas', 'Daniela', 'dani.vargas@mail.com', 'Boedo 400, Lomas de Zamora'),
 ('31555222', 1, 'Coria', 'Matías', 'mati.coria@mail.com', 'Yrigoyen 5500, Lanús'),
 ('27398887773', 3, 'Guzmán', 'Laura', 'laura.guzman@mail.com', 'Alem 120, Quilmes'),
 ('41222333', 1, 'Ponce', 'Gastón', 'gaston.ponce@mail.com', 'Brandsen 300, Quilmes'),
 ('35888999', 1, 'Álvarez', 'Luciana', 'lu.alvarez@mail.com', 'Sarmiento 200, Temperley'),
 ('39666777', 1, 'Ferreira', 'Maximiliano', 'maxi.f@mail.com', 'Av. de Mayo 900, CABA'),
 ('34111222', 1, 'Mendoza', 'Bárbara', 'barby.m@mail.com', 'Córdoba 1800, CABA'),
 ('37444555', 1, 'Gómez', 'Facundo', 'facu.gomez@mail.com', 'España 250, Avellaneda');

INSERT INTO Telefono (TELEFONO) VALUES
 ('11-1234-5678'), ('11-8765-4321'), ('11-9999-0000'), ('11-1111-2222'), ('11-2233-4455'),
 ('11-5566-7788'), ('11-9988-7766'), ('11-3344-5566'), ('11-7788-9900'), ('11-2211-3344'),
 ('11-5544-3322'), ('11-6677-8899'), ('11-1122-3344'), ('11-4433-2211'), ('11-8899-0011'),
 ('11-1010-2020'), ('11-3030-4040'), ('11-5050-6060'), ('11-7070-8080'), ('11-9090-1010'),
 ('11-1212-3434'), ('11-5656-7878'), ('11-9090-0909'), ('11-2323-4545'), ('11-6767-8989'),
 ('11-3434-5656'), ('11-7878-9090'), ('11-4545-6767'), ('11-8989-0101'), ('11-1313-2424');

-- Asociamos los teléfonos generados (simplificado a 1 teléfono por cliente)
INSERT INTO Cliente_Telefono (NRO_DOC_CLIENTE, TELEFONO) VALUES
 ('40111222', '11-1234-5678'), ('38999111', '11-8765-4321'), ('23401234569', '11-9999-0000'), 
 ('39222333', '11-1111-2222'), ('34555666', '11-2233-4455'), ('31222444', '11-5566-7788'), 
 ('42333555', '11-9988-7766'), ('37888123', '11-3344-5566'), ('39000123', '11-7788-9900'), 
 ('20381112225', '11-2211-3344'), ('41555666', '11-5544-3322'), ('35666777', '11-6677-8899'), 
 ('32888999', '11-1122-3344'), ('27331112229', '11-4433-2211'), ('40999000', '11-8899-0011'), 
 ('36111333', '11-1010-2020'), ('39444555', '11-3030-4040'), ('34222111', '11-5050-6060'), 
 ('37555666', '11-7070-8080'), ('20359998881', '11-9090-1010'), ('38111444', '11-1212-3434'), 
 ('43222333', '11-5656-7878'), ('36999111', '11-9090-0909'), ('31555222', '11-2323-4545'), 
 ('27398887773', '11-6767-8989'), ('41222333', '11-3434-5656'), ('35888999', '11-7878-9090'), 
 ('39666777', '11-4545-6767'), ('34111222', '11-8989-0101'), ('37444555', '11-1313-2424');


-- =====================================================================
-- 2. CARGA DEL STOCK DE PRENDAS REALES (Basado en el catálogo web)
-- Asumiendo Categorias: 1=Remeras, 2=Pantalones, 3=Buzos, 5=Calzas, 6=Proteccion, 7=Compresion, 8=Accesorios
-- Asumiendo Talles: 1=XS, 2=S, 3=M, 4=L, 5=XL, 7=U(Unico)
-- Asumiendo Colores: 1=Negro, 2=Blanco, 3=Azul, 4=Gris
-- =====================================================================
-- (Primero limpiamos la tabla Prenda si venía con datos genéricos)
DELETE FROM Detalle_Venta;
DELETE FROM Prenda;

INSERT INTO Prenda (COD_PRENDA, DESC_PRENDA, ID_CATEGORIA, ID_COLOR, ID_TALLE, PRECIO_CATALOGO, STOCK_DISP) VALUES
 ('RMC-NEG-M', 'Remera compresión manga corta', 7, 1, 3, 57000.00, 300),
 ('RML-NEG-M', 'Remera compresión manga larga', 7, 1, 3, 66000.00, 250),
 ('CLC-NEG-M', 'Calza corta', 5, 1, 3, 41300.00, 400),
 ('CLL-NEG-L', 'Calza compresión larga', 7, 1, 4, 49600.00, 300),
 ('CL3-NEG-M', 'Calza compresión 3/4', 7, 1, 3, 46300.00, 250),
 ('MUS-NEG-M', 'Musculosa Compresión', 7, 1, 3, 48000.00, 350),
 ('MED-BLA-U', 'Medias deportivas Seele', 8, 2, 7, 7800.00, 600),
 ('MDE-NEG-U', 'Medias Seele Elite', 8, 1, 7, 10400.00, 500),
 ('SOQ-BLA-U', 'Soquetes', 8, 2, 7, 5700.00, 500),
 ('MNG-NEG-U', 'Manga de compresión x 1u', 8, 1, 7, 12600.00, 400),
 ('SHO-NEG-M', 'Short Deportivo', 2, 1, 3, 52800.00, 300),
 ('BUZ-GRI-L', 'Buzo Canguro Seele', 3, 4, 4, 65100.00, 200),
 ('ROD-NEG-U', 'Rodilleras con Protección Seele', 6, 1, 7, 75600.00, 150),
 ('MUT-NEG-M', 'Musculosa Training', 1, 1, 3, 48900.00, 300),
 ('MSR-AZU-M', 'Musculosa Reversible Splash Tee', 1, 3, 3, 63400.00, 200),
 ('JOG-NEG-L', 'Joggers Seele', 2, 1, 4, 70700.00, 250),
 ('SHC-NEG-M', 'Short Casual Style', 2, 1, 3, 49800.00, 300),
 ('REO-BLA-L', 'Remera Oversize Motion', 1, 2, 4, 35700.00, 400),
 ('TOP-NEG-S', 'Top Deportivo', 7, 1, 2, 42900.00, 350),
 ('RMM-NEG-S', 'Remera manga corta compresión Mujer', 7, 1, 2, 38900.00, 300),
 ('RLM-NEG-S', 'Remera manga larga compresión Mujer', 7, 1, 2, 43200.00, 250),
 ('CCM-NEG-S', 'Calza Corta Mujer', 5, 1, 2, 38900.00, 350),
 ('C3M-NEG-S', 'Calza Compresión 3/4 Mujer', 7, 1, 2, 43300.00, 300),
 ('CDH-NEG-M', 'Calza Dual Hoop', 5, 1, 3, 43900.00, 250),
 ('CDM-NEG-S', 'Calza Dual Hoop Mujer', 5, 1, 2, 41200.00, 250),
 ('MUP-NEG-M', 'Musculosa con Protección', 6, 1, 3, 72450.00, 150),
 ('CXP-NEG-M', 'Calza Corta Con Protección', 6, 1, 3, 77700.00, 150),
 ('COD-NEG-U', 'Coderas con Protección', 6, 1, 7, 31500.00, 200);

DELIMITER //

DROP PROCEDURE IF EXISTS sp_simular_operatoria_anual //

CREATE PROCEDURE sp_simular_operatoria_anual(IN p_cantidad_ventas INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE v_nro_doc VARCHAR(11);
    DECLARE v_tipo_vta INT;
    DECLARE v_medio_pago INT;
    DECLARE v_estado_vta INT;
    DECLARE v_estado_fc INT;
    DECLARE v_fecha_venta DATE;
    DECLARE v_num_factura VARCHAR(15);
    DECLARE v_num_venta INT;
    
    DECLARE v_cod_prenda VARCHAR(16);
    DECLARE v_precio_unit DECIMAL(10,2);
    DECLARE v_cant_items INT;
    DECLARE v_cant_prenda INT;
    DECLARE v_importe_total DECIMAL(10,2);
    DECLARE j INT;
    
    DECLARE v_secuencia_factura INT DEFAULT 1000;

    WHILE i <= p_cantidad_ventas DO
        SELECT NRO_DOC_CLIENTE INTO v_nro_doc FROM Cliente ORDER BY RAND() LIMIT 1;
        
        -- Fecha desde hoy hasta 365 días hacia atrás
        SET v_fecha_venta = DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY);
        
        SET v_tipo_vta = FLOOR(1 + RAND() * 2);
        SET v_medio_pago = FLOOR(1 + RAND() * 3);
        
        IF RAND() > 0.10 THEN
            SET v_estado_vta = 4;
        ELSE
            SET v_estado_vta = FLOOR(1 + RAND() * 5);
        END IF;

        SET v_num_factura = CONCAT('B-0001-', LPAD(v_secuencia_factura, 8, '0'));
        SET v_secuencia_factura = v_secuencia_factura + 1;
        
        SET v_estado_fc = IF(v_estado_vta = 5, 3, 2);
        
        INSERT INTO Factura (NUM_FACT_LEGAL, FECHA_FACTURA, IMPORTE_FACTURA, ID_ESTADO_FC)
        VALUES (v_num_factura, v_fecha_venta, 0.00, v_estado_fc);
        
        INSERT INTO Venta (NRO_DOC_CLIENTE, ID_TIPO_VTA, ID_MEDIO_PAGO, ID_ESTADO_VTA, FECHA_VENTA, NUM_FACT_LEGAL)
        VALUES (v_nro_doc, v_tipo_vta, v_medio_pago, v_estado_vta, v_fecha_venta, v_num_factura);
        
        SET v_num_venta = LAST_INSERT_ID();
        SET v_importe_total = 0;
        
        SET v_cant_items = FLOOR(1 + RAND() * 3);
        SET j = 1;
        
        WHILE j <= v_cant_items DO
            -- 1. Definimos primero cuántas unidades quiere el cliente (1 o 2)
            SET v_cant_prenda = FLOOR(1 + RAND() * 2); 
            
            -- Limpiamos la variable para asegurar que no arrastre datos del ciclo anterior
            SET v_cod_prenda = NULL;
            
            -- 2. Buscamos prenda que no esté en este carrito Y que tenga stock suficiente
            SELECT COD_PRENDA, PRECIO_CATALOGO INTO v_cod_prenda, v_precio_unit 
            FROM Prenda 
            WHERE COD_PRENDA NOT IN (SELECT COD_PRENDA FROM Detalle_Venta WHERE NUM_VENTA = v_num_venta)
              AND STOCK_DISP >= v_cant_prenda
            ORDER BY RAND() LIMIT 1;
            
            -- Solo avanzamos si encontró un artículo con stock
            IF v_cod_prenda IS NOT NULL THEN
                
                IF v_medio_pago IN (1, 3) THEN
                    SET v_precio_unit = v_precio_unit * 0.90;
                END IF;

                INSERT INTO Detalle_Venta (NUM_VENTA, COD_PRENDA, CANT_PRENDA, VAL_UNIT)
                VALUES (v_num_venta, v_cod_prenda, v_cant_prenda, v_precio_unit);
                
                -- 3. DESCUENTO DE STOCK EN TIEMPO REAL (Solo si la venta no se canceló)
                IF v_estado_vta <> 5 THEN
                    UPDATE Prenda 
                    SET STOCK_DISP = STOCK_DISP - v_cant_prenda 
                    WHERE COD_PRENDA = v_cod_prenda;
                END IF;
                
                SET v_importe_total = v_importe_total + (v_precio_unit * v_cant_prenda);
            END IF;
            
            SET j = j + 1;
        END WHILE;
        
        UPDATE Factura SET IMPORTE_FACTURA = v_importe_total WHERE NUM_FACT_LEGAL = v_num_factura;
        
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

CALL sp_simular_operatoria_anual(500);