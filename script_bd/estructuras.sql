
USE bd_csharp
GO

------------------------------------------------

-- INSERTAR DATOS MANUALMENTE

-------------------------------------------------

INSERT INTO dbo.area_aplicacion (id,nombre) VALUES
(2,N'Explotación de minas y canteras'),
(3,N'Industrias manufactureras'),
(4,N'Suministro de electricidad, gas y aire acondicionado'),
(5,N'Gestión de agua, residuos y saneamiento ambiental'),
(6,N'Construcción'),
(7,N'Comercio y reparación de vehículos y motocicletas'),
(8,N'Transporte y almacenamiento'),
(9,N'Alojamiento y servicios de comida'),
(10,N'Información y comunicaciones'),
(11,N'Actividades financieras y de seguros'),
(12,N'Actividades inmobiliarias'),
(13,N'Actividades profesionales, científicas y técnicas'),
(14,N'Servicios administrativos y de apoyo'),
(15,N'Administración pública y defensa'),
(16,N'Educación'),
(17,N'Atención de la salud y asistencia social'),
(18,N'Actividades artísticas, recreativas y entretenimiento'),
(19,N'Otras actividades de servicios'),
(20,N'Hogares como empleadores'),
(21,N'Organizaciones y entidades extraterritoriales'),
(22,N'Agricultura, ganadería, silvicultura y pesca');
GO

INSERT INTO dbo.objetivo_desarrollo_sostenible (id,nombre, categoria) VALUES
(1, N'Fin de la Pobreza', N'Social'),
(2,N'Hambre cero', N'Social'),
(3, N'Salud y bienestar', N'Social'),
(4, N'Educación de calidad', N'Social'),
(5, N'Igualdad de género', N'Social'),
(6, N'Agua limpia y saneamiento', N'Ambientales'),
(7, N'Energía asequible y no contaminante', N'Económicos'),
(8, N'Trabajo decente y crecimiento económico', N'Económicos'),
(9, N'Industria, Innovación e Infraestructura', N'Económicos'),
(10, N'Reducción de las desigualdades', N'Económicos'),
(11, N'Ciudades y Comunidades Sostenibles', N'Económicos'),
(12,N'Producción y consumo Responsables', N'Ambientales'),
(13, N'Acción por el clima', N'Ambientales'),
(14, N'Vida Submarina', N'Ambientales'),
(15,N'Vida de ecosistemas terrestres', N'Ambientales'),
(16,N'Paz, Justicia e instituciones sólidas', N'Estrategicos'),
(17, N'Alianzas para lograr los objetivos', N'Estrategicos');
GO

INSERT INTO dbo.area_conocimiento (id, gran_area, area, disciplina) VALUES
(101, N'Ciencias Naturales', N'Matemáticas', N'Matemáticas puras'),
(102, N'Ciencias Naturales', N'Matemáticas', N'Matemáticas aplicadas'),
(103, N'Ciencias Naturales', N'Matemáticas', N'Estadística y probabilidades (investigación en metodologías)'),
(104, N'Ciencias Naturales', N'Computación y ciencias de la información', N'Ciencias de la Computación'),
(105, N'Ciencias Naturales', N'Computación y ciencias de la información', N'Ciencias de la Información y bioinformática'),
(106, N'Ciencias Naturales', N'Ciencias físicas', N'Física Atómica, molecular y química'),
(107, N'Ciencias Naturales', N'Ciencias físicas', N'Física de la materia'),
(108, N'Ciencias Naturales', N'Ciencias físicas', N'Física de partículas y campos'),
(109, N'Ciencias Naturales', N'Ciencias físicas', N'Física nuclear')
GO

INSERT INTO dbo.linea_investigacion (nombre, descripcion) VALUES
('Biotecnología ambiental', 'Desarrollo de procesos biotecnológicos para remediación y tratamiento de residuos.'),
('Robótica y control', 'Diseño y control de sistemas robóticos para aplicaciones industriales y de servicio.'),
('Políticas públicas y gobernanza', 'Análisis de políticas públicas, evaluación de impacto y gobernanza local.'),
('Salud pública y epidemiología', 'Estudios epidemiológicos, vigilancia en salud y promoción de la salud comunitaria.'),
('Energías renovables', 'Investigación en generación, almacenamiento y gestión de energías limpias.'),
('Matemáticas aplicadas y modelado', 'Modelado matemático, simulación numérica y optimización.'),
('Neurociencias y cognición', 'Estudios sobre procesos cognitivos, neuroimagen y neuropsicología.'),
('Estudios urbanos y territorio', 'Investigación en planificación urbana, movilidad y desarrollo territorial.'),
('Materiales avanzados', 'Síntesis y caracterización de materiales con propiedades funcionales.'),
('Innovación educativa', 'Diseño y evaluación de estrategias pedagógicas y tecnologías educativas.')
GO

-- Mafe Tablas 

-- Tablas no necesarias pero útiles para información de relaciones
-- Universidad, linea_investigacion

INSERT INTO dbo.universidad (id, nombre, tipo, ciudad) VALUES
(1, 'Universidad Nacional de Colombia', 'Pública', 'Bogotá'),
(2, 'Universidad de Antioquia', 'Pública', 'Medellín'),
(3, 'Universidad del Valle', 'Pública', 'Cali'),
(4, 'Universidad Javeriana', 'Privada', 'Bogotá'),
(5, 'Universidad EAFIT', 'Privada', 'Medellín');
GO

INSERT INTO dbo.linea_investigacion (nombre, descripcion) VALUES
('Inteligencia Artificial', 'Estudio de algoritmos inteligentes y aprendizaje automático'),
('Ciencia de Datos', 'Análisis y procesamiento de grandes volúmenes de datos'),
('Ciberseguridad', 'Protección de sistemas y redes informáticas'),
('Ingeniería de Software', 'Desarrollo y mantenimiento de software'),
('Internet de las Cosas', 'Conexión de dispositivos a través de internet');
GO

--grupo_investigacion, semillero, ac_linea, aa_linea
 
INSERT INTO dbo.grupo_investigacion (id, nombre, url_gruplac, categoria, convocatoria, fecha_fundacion, universidad, interno, ambito) VALUES
(1, 'Grupo IA Avanzada', NULL, 'A1', '2024', '2015-03-10', 1, 1, 'Nacional'),
(2, 'Grupo Big Data', NULL, 'A', '2023', '2016-06-15', 1, 1, 'Internacional'),
(3, 'Grupo Software Inteligente', NULL, 'B', '2022', '2018-01-20', 2, 1, 'Nacional'),
(4, 'Grupo Redes y Telecom', NULL, 'A2', '2023', '2014-09-12', 2, 0, 'Nacional'),
(5, 'Grupo Ciberseguridad', NULL, 'A1', '2024', '2017-11-05', 3, 1, 'Internacional'),
(6, 'Grupo Ciencia de Datos', NULL, 'A', '2023', '2019-02-28', 3, 1, 'Nacional'),
(7, 'Grupo Robótica', NULL, 'B', '2022', '2020-07-19', 4, 1, 'Nacional'),
(8, 'Grupo IoT', NULL, 'C', '2021', '2021-05-14', 4, 0, 'Internacional'),
(9, 'Grupo Blockchain', NULL, 'B', '2023', '2019-10-10', 5, 1, 'Nacional'),
(10, 'Grupo Desarrollo Web', NULL, 'A2', '2024', '2016-12-01', 5, 1, 'Nacional');
 GO

INSERT INTO dbo.semillero (id, nombre, fecha_fundacion, grupo_investigacion) VALUES
(1, 'Semillero IA', '2020-02-01', 1),
(2, 'Semillero Big Data', '2021-03-10', 2),
(3, 'Semillero Software', '2022-04-15', 3),
(4, 'Semillero Redes', '2020-06-20', 4),
(5, 'Semillero Seguridad', '2021-07-30', 5),
(6, 'Semillero Data Science', '2022-01-25', 6),
(7, 'Semillero Robótica', '2023-02-14', 7),
(8, 'Semillero IoT', '2023-05-18', 8),
(9, 'Semillero Blockchain', '2022-08-22', 9),
(10, 'Semillero Web', '2021-09-12', 10);
 GO

INSERT INTO dbo.ac_linea (linea_investigacion, area_conocimiento) VALUES
(1,101),
(1,102),
(2,104),
(2,105),
(3,103),
(3,106),
(4,107),
(4,108),
(5,101),
(5,104),
(2,109),
(3,101),
(4,102),
(5,103);
GO

INSERT INTO dbo.aa_linea (area_aplicacion, linea_investigacion) VALUES
(2,1),
(3,1),
(4,1),
(2,2),
(3,2),
(4,2),
(5,3),
(6,3),
(7,4),
(8,4),
(9,5),
(10,5),
(11,1),
(12,3);
GO


-- Maritza tablas

-- no tocaba pero necesaria para la relacion 
INSERT INTO dbo.docente (cedula, nombres, apellidos, genero, cargo, fecha_nacimiento, correo, telefono, url_cvlac, fecha_actualizacion, escalafon, perfil, cat_minciencia, conv_minciencia, nacionalidaad, linea_investigacion_principal) VALUES 
(1001, 'Ana María', 'Gómez López', 'Femenino', 'Profesor Titular', '1980-05-12','ana.gomez@universidad.edu.co', '3001234567', 'http://cvlac.universidad.edu.co/ana',    GETDATE(), 'Doctorado', 'Investigadora en biotecnología aplicada',    'Senior', 'Conv2026', 'Colombiana', 1),
(1002, 'Carlos Andrés', 'Martínez Ruiz', 'Masculino', 'Profesor Asociado', '1975-11-23', 'carlos.martinez@universidad.edu.co', '3019876543', 'http://cvlac.universidad.edu.co/carlos', GETDATE(), 'Maestría', 'Especialista en inteligencia artificial y robótica', 'Junior', 'Conv2026', 'Colombiano', 2),
(1003, 'Laura', 'Fernández Pérez', 'Femenino', 'Investigadora', '1990-03-08', 'laura.fernandez@universidad.edu.co', '3025556677', 'http://cvlac.universidad.edu.co/laura', GETDATE(), 'Doctorado', 'Investigadora en energías renovables', 'Senior', 'Conv2026', 'Colombiana', 3);
GO

-- participa_grupo y grupo_linea

ALTER TABLE dbo.participa_grupo
ALTER COLUMN rol NVARCHAR(100); -- Cambiamos el límite a 100 caracteres
GO

INSERT INTO dbo.participa_grupo (docente_cedula, grupo_investigacion_id, rol, fecha_inicio, fecha_fin) VALUES
(1001, 1, 'Lider', '2020-01-15', NULL),
(1001, 2, 'Investigador', '2021-06-10', NULL),
(1002, 1, 'Investigador', '2019-03-20', '2022-12-31'),
(1002, 3, 'Coordinador', '2023-01-05', NULL),
(1003, 2, 'Investigador', '2022-08-01', NULL),
(1003, 3, 'Lider', '2021-02-14', '2024-02-14');
GO

INSERT INTO dbo.grupo_linea (grupo_investigacion, linea_investigacion) VALUES
(1,1),(1,2),(1,3),
(2,2),(2,3),(2,4),
(3,1),(3,4),(3,5),
(4,3),(4,5),(4,6),
(5,1),(5,5),(5,6),
(6,2),(6,4),(6,6),
(7,1),(7,3),(7,6),
(8,2),(8,5),
(9,1),(9,4),(9,6),
(10,2),(10,3),(10,5);
GO


-- Mauricio tablas
-- participa_semillero, semillero_linea, ods_linea

INSERT INTO dbo.participa_semillero (docente, semillero, rol, fecha_inicio, fecha_fin) VALUES
(1001,1,'Lider','2022-01-10',NULL),
(1002,1,'Investigador','2022-02-15',NULL),
(1003,2,'Lider','2021-03-20',NULL),
(1001,3,'Investigador','2022-05-01',NULL),
(1002,4,'Lider','2020-07-10',NULL),
(1003,5,'Investigador','2021-08-12',NULL),
(1001,6,'Lider','2022-02-05',NULL),
(1002,7,'Investigador','2023-03-01',NULL),
(1003,8,'Lider','2023-06-01',NULL),
(1001,9,'Investigador','2022-09-01',NULL),
(1002,10,'Lider','2021-10-01',NULL);
GO

INSERT INTO dbo.semillero_linea (semillero, linea_investigacion) VALUES
(1,1),(1,2),
(2,2),(2,4),
(3,3),(3,1),
(4,4),(4,3),
(5,5),(5,1),
(6,6),(6,2),
(7,1),(7,6),
(8,2),(8,5),
(9,1),(9,4),
(10,3),(10,2);
GO

INSERT INTO dbo.ods_linea (ods, linea_investigacion) VALUES
(1,1),(1,2),
(2,2),(2,3),
(3,3),(3,4),
(4,4),(4,5),
(5,5),(5,6),
(1,6),(2,1),
(3,2),(4,3),
(5,4);
GO


-----------------------------------------------------------------------------------------

-- Para el borrado lógico se insertará la columna de "estado" para manejarlo en bits
-- 0 para inactivo y 1 para activo

-----------------------------------------------------------------------------------------

-- mafe
ALTER TABLE dbo.semillero
ADD estado BIT NOT NULL CONSTRAINT semillero_estado DEFAULT 1;
GO

ALTER TABLE dbo.grupo_investigacion
ADD estado BIT NOT NULL CONSTRAINT grupo_investigacion_estado DEFAULT 1;
GO

ALTER TABLE dbo.ac_linea
ADD estado BIT NOT NULL CONSTRAINT ac_linea_estado DEFAULT 1;
GO

ALTER TABLE dbo.aa_linea
ADD estado BIT NOT NULL CONSTRAINT aa_lineao_estado DEFAULT 1;
GO

ALTER TABLE dbo.universidad -- necesario por relacion
ADD estado BIT NOT NULL CONSTRAINT universidad_estado DEFAULT 1;
GO


-- maritza

ALTER TABLE dbo.area_aplicacion
ADD estado BIT NOT NULL CONSTRAINT area_aplicacion_estado DEFAULT 1;
GO

ALTER TABLE dbo.linea_investigacion
ADD estado BIT NOT NULL CONSTRAINT linea_investigacion_estado DEFAULT 1;
GO

ALTER TABLE dbo.participa_grupo
ADD estado BIT NOT NULL CONSTRAINT participa_grupo_estado DEFAULT 1;
GO

ALTER TABLE dbo.grupo_linea
ADD estado BIT NOT NULL CONSTRAINT grupo_linea_estado DEFAULT 1;
GO

ALTER TABLE dbo.docente -- necesario por relacion
ADD estado BIT NOT NULL CONSTRAINT docente_estado DEFAULT 1;
GO


-- mauricio

ALTER TABLE dbo.area_conocimiento
ADD estado BIT NOT NULL CONSTRAINT area_conocimiento_estado DEFAULT 1;
GO

ALTER TABLE dbo.objetivo_desarrollo_sostenible
ADD estado BIT NOT NULL CONSTRAINT objetivo_desarrollo_sostenible_estado DEFAULT 1;
GO

ALTER TABLE dbo.ods_linea
ADD estado BIT NOT NULL CONSTRAINT ods_linea_estado DEFAULT 1;
GO

ALTER TABLE dbo.semillero_linea
ADD estado BIT NOT NULL CONSTRAINT semillero_linea_estado DEFAULT 1;
GO

ALTER TABLE dbo.participa_semillero
ADD estado BIT NOT NULL CONSTRAINT participa_semillero_estado DEFAULT 1;
GO



-- ============================================================
--
--  CRUD COMPLETO: grupo_investigacion
--
-- ============================================================


-------------------------------------------------------
-- Ingresar grupo investigacion
-------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_GRUPO_INVESTIGACION
    @p_id INT, 
    @p_nombre NVARCHAR(60), 
    @p_url_gruplac NVARCHAR(128), 
    @p_categoria NVARCHAR(10), 
    @p_convocatoria NVARCHAR(10), 
    @p_fecha_fundacion DATE, 
    @p_universidad INT, 
    @p_interno BIT, 
    @p_ambito NVARCHAR(45),
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(500);

    -- VALIDACIONES
    IF EXISTS (SELECT 1 FROM grupo_investigacion WHERE id = @p_id)
    BEGIN
        SET @v_msg = CONCAT(N'El ID ', @p_id, N' ya está asignado a otro grupo.');
        THROW 50001, @v_msg, 1;
    END

    -- Validar que la universidad exista (si se envió)
    IF @p_universidad IS NOT NULL AND NOT EXISTS (SELECT 1 FROM universidad WHERE id = @p_universidad)
    BEGIN
        SET @v_msg = CONCAT(N'La universidad con ID ', @p_universidad, N' no existe.');
        THROW 50002, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO grupo_investigacion (id, nombre, url_gruplac, categoria, convocatoria, fecha_fundacion, universidad, interno, ambito, estado)
        VALUES (@p_id, @p_nombre, @p_url_gruplac, @p_categoria, @p_convocatoria, @p_fecha_fundacion, @p_universidad, @p_interno, @p_ambito, 1);

        -- Retornar el registro insertado en JSON
        SET @p_resultado = (
            SELECT id, nombre, url_gruplac, categoria, convocatoria, fecha_fundacion, universidad, interno, ambito, estado
            FROM grupo_investigacion
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-------------------------------------------------------
-- Actualizar grupo investigacion
-------------------------------------------------------
CREATE PROCEDURE SP_ACTUALIZAR_GRUPO_INVESTIGACION
    @p_id INT, 
    @p_nombre NVARCHAR(60), 
    @p_url_gruplac NVARCHAR(128), 
    @p_categoria NVARCHAR(10), 
    @p_convocatoria NVARCHAR(10), 
    @p_fecha_fundacion DATE, 
    @p_universidad INT, 
    @p_interno BIT, 
    @p_ambito NVARCHAR(45),
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(500);

    -- Validar que el grupo exista y esté activo
    IF NOT EXISTS (SELECT 1 FROM grupo_investigacion WHERE id = @p_id AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El grupo de investigación con ID ', @p_id, N' no existe o está inactivo.');
        THROW 50001, @v_msg, 1;
    END

    -- Validar universidad si no es NULL
    IF @p_universidad IS NOT NULL AND NOT EXISTS (SELECT 1 FROM universidad WHERE id = @p_universidad)
    BEGIN
        SET @v_msg = CONCAT(N'La universidad con ID ', @p_universidad, N' no existe.');
        THROW 50002, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE grupo_investigacion 
        SET 
            nombre = @p_nombre, 
            url_gruplac = @p_url_gruplac, 
            categoria = @p_categoria, 
            convocatoria = @p_convocatoria, 
            fecha_fundacion = @p_fecha_fundacion, 
            universidad = @p_universidad, 
            interno = @p_interno, 
            ambito = @p_ambito 
        WHERE id = @p_id;

        SET @p_resultado = (
            SELECT id, nombre, url_gruplac, categoria, convocatoria, fecha_fundacion, universidad, interno, ambito
            FROM grupo_investigacion
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END
GO

-------------------------------------------------------
-- Listar Todos (Solo Activos) grupo investigacion
-------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_GRUPOS_INVESTIGACION
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        g.id,
        g.nombre,
        g.url_gruplac,
        g.categoria,
        g.convocatoria,
        CONVERT(NVARCHAR(10), g.fecha_fundacion, 120) AS fecha_fundacion,
        g.universidad,
        u.nombre AS nombre_universidad,
        g.interno,
        g.ambito,
        g.estado
    FROM grupo_investigacion g
    LEFT JOIN universidad u ON g.universidad = u.id
    WHERE g.estado = 1
    ORDER BY g.id;
END;
GO

-------------------------------------------------------
-- Obtener por ID grupo investigacion
-------------------------------------------------------
CREATE PROCEDURE SP_BUSCAR_GRUPO_POR_ID_NOMBRE
    @p_id INT = NULL,
    @p_nombre NVARCHAR(60) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT
        g.id,
        g.nombre,
        g.url_gruplac,
        g.categoria,
        g.convocatoria,
        CONVERT(NVARCHAR(10), g.fecha_fundacion, 120) AS fecha_fundacion,
        g.universidad,
        u.nombre AS nombre_universidad,
        g.interno,
        g.ambito,
        g.estado
    FROM grupo_investigacion g
    LEFT JOIN universidad u ON g.universidad = u.id
    WHERE 
        g.estado = 1
        AND (@p_id IS NULL OR g.id = @p_id)
        AND (@p_nombre IS NULL OR g.nombre LIKE '%' + @p_nombre + '%');
END;
GO

-------------------------------------------------------
-- Eliminar (Borrado Lógico) grupo investigacion
-------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_GRUPO_INVESTIGACION
    @p_id INT,
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM grupo_investigacion WHERE id = @p_id AND estado = 1)
    BEGIN
        THROW 50004, N'No se puede eliminar un grupo que no existe o ya está inactivo.', 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE semillero
        SET estado = 0
        WHERE grupo_investigacion = @p_id AND estado = 1;

        UPDATE grupo_investigacion 
        SET estado = 0 
        WHERE id = @p_id;

        SET @p_resultado = JSON_OBJECT('mensaje': 'Grupo eliminado lógicamente', 'id': @p_id);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ============================================================
--
--  CRUD COMPLETO: semillero
--
-- ============================================================

-------------------------------------------------------
-- Ingresar semillero
-------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_SEMILLERO
    @p_id                INT,
    @p_nombre            NVARCHAR(60),
    @p_fecha_fundacion   DATE,
    @p_grupo_investigacion INT,
    @p_resultado         NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(500);

    -- Validar que el ID no esté en uso
    IF EXISTS (SELECT 1 FROM semillero WHERE id = @p_id)
    BEGIN
        SET @v_msg = CONCAT(N'El ID ', @p_id, N' ya está asignado a otro semillero.');
        THROW 50001, @v_msg, 1;
    END

    -- Validar que el grupo de investigación exista y esté activo
    IF NOT EXISTS (SELECT 1 FROM grupo_investigacion
                   WHERE id = @p_grupo_investigacion AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El grupo de investigación con ID ',
                            @p_grupo_investigacion,
                            N' no existe o está inactivo.');
        THROW 50002, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO semillero (id, nombre, fecha_fundacion, grupo_investigacion, estado)
        VALUES (@p_id, @p_nombre, @p_fecha_fundacion, @p_grupo_investigacion, 1);

        SET @p_resultado = (
            SELECT id, nombre, fecha_fundacion, grupo_investigacion, estado
            FROM semillero
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-------------------------------------------------------
-- Actualizar semillero
-------------------------------------------------------
CREATE PROCEDURE SP_ACTUALIZAR_SEMILLERO
    @p_id                INT,
    @p_nombre            NVARCHAR(60),
    @p_fecha_fundacion   DATE,
    @p_grupo_investigacion INT,
    @p_resultado         NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(500);

    -- Validar que el semillero exista y esté activo
    IF NOT EXISTS (SELECT 1 FROM semillero WHERE id = @p_id AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El semillero con ID ', @p_id,
                            N' no existe o está inactivo.');
        THROW 50001, @v_msg, 1;
    END

    -- Validar que el nuevo grupo exista y esté activo
    IF NOT EXISTS (SELECT 1 FROM grupo_investigacion
                   WHERE id = @p_grupo_investigacion AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El grupo de investigación con ID ',
                            @p_grupo_investigacion,
                            N' no existe o está inactivo.');
        THROW 50002, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE semillero
        SET nombre = @p_nombre,
            fecha_fundacion = @p_fecha_fundacion,
            grupo_investigacion = @p_grupo_investigacion
        WHERE id = @p_id;

        SET @p_resultado = (
            SELECT id, nombre, fecha_fundacion, grupo_investigacion, estado
            FROM semillero
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-------------------------------------------------------
-- Listar Todos (Solo Activos) semillero
-------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_SEMILLEROS
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        s.id,
        s.nombre,
        CONVERT(NVARCHAR(10), s.fecha_fundacion, 120) AS fecha_fundacion,
        s.grupo_investigacion,
        g.nombre AS nombre_grupo,
        s.estado
    FROM semillero s
    INNER JOIN grupo_investigacion g ON s.grupo_investigacion = g.id
    WHERE s.estado = 1
    ORDER BY s.id;
END;
GO

-------------------------------------------------------
-- Obtener por ID semillero
-------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_SEMILLERO_POR_ID_NOMBRE
    @p_id INT = NULL,
    @p_nombre NVARCHAR(60) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT
        s.id,
        s.nombre,
        CONVERT(NVARCHAR(10), s.fecha_fundacion, 120) AS fecha_fundacion,
        s.grupo_investigacion,
        g.nombre AS nombre_grupo,
        s.estado
    FROM semillero s
    INNER JOIN grupo_investigacion g ON s.grupo_investigacion = g.id
    WHERE s.estado = 1
        AND (@p_id IS NULL OR s.id = @p_id)
        AND (@p_nombre IS NULL OR s.nombre LIKE '%' + @p_nombre + '%');
END;
GO

-------------------------------------------------------
-- Eliminar (Borrado Lógico) semillero
-------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_SEMILLERO
    @p_id        INT,
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM semillero WHERE id = @p_id AND estado = 1)
        THROW 50004, N'No se puede eliminar un semillero que no existe o ya está inactivo.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE semillero
        SET estado = 0
        WHERE id = @p_id;

        SET @p_resultado = JSON_OBJECT('mensaje' : 'Semillero eliminado lógicamente', 'id': @p_id);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD A MEDIAS: ac_linea
--  PK compuesta: (linea_investigacion_id, area_conocimiento_id)
-- ============================================================

-------------------------------------------------------
-- Ingresar ac_linea  
-------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_AC_LINEA
    @p_linea_investigacion INT,
    @p_area_conocimiento   INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(500);

    -- Validar que la línea exista
    IF NOT EXISTS (SELECT 1 FROM linea_investigacion WHERE id = @p_linea_investigacion)
    BEGIN
        SET @v_msg = CONCAT(N'La línea de investigación con ID ',
                            @p_linea_investigacion, N' no existe.');
        THROW 50001, @v_msg, 1;
    END

    -- Validar que el área de conocimiento exista
    IF NOT EXISTS (SELECT 1 FROM area_conocimiento WHERE id = @p_area_conocimiento)
    BEGIN
        SET @v_msg = CONCAT(N'El área de conocimiento con ID ',
                            @p_area_conocimiento, N' no existe.');
        THROW 50002, @v_msg, 1;
    END

    -- Verificar si la relación ya existe (activa o inactiva)
    IF EXISTS (SELECT 1 FROM ac_linea
               WHERE linea_investigacion = @p_linea_investigacion
                 AND area_conocimiento   = @p_area_conocimiento
                 AND estado = 1)
    BEGIN
        SET @v_msg = N'La relación entre esa línea y área de conocimiento ya existe y está activa.';
        THROW 50003, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Si existía inactiva, reactivarla; si no, insertar
        IF EXISTS (SELECT 1 FROM ac_linea
                   WHERE linea_investigacion = @p_linea_investigacion
                     AND area_conocimiento   = @p_area_conocimiento)
        BEGIN
            UPDATE ac_linea
            SET estado = 1
            WHERE linea_investigacion = @p_linea_investigacion
              AND area_conocimiento   = @p_area_conocimiento;
        END
        ELSE
        BEGIN
            INSERT INTO ac_linea (linea_investigacion, area_conocimiento, estado)
            VALUES (@p_linea_investigacion, @p_area_conocimiento, 1);
        END

        SET @p_resultado = (
            SELECT linea_investigacion, area_conocimiento, estado
            FROM ac_linea
            WHERE linea_investigacion = @p_linea_investigacion
              AND area_conocimiento   = @p_area_conocimiento
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-------------------------------------------------------
-- Listar Todos (Solo Activos) ac_linea  
-------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_AC_LINEA
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        al.linea_investigacion,
        li.nombre  AS nombre_linea,
        al.area_conocimiento,
        ac.gran_area,
        ac.area,
        ac.disciplina AS nombre_area,
        al.estado
    FROM ac_linea al
    INNER JOIN linea_investigacion li ON al.linea_investigacion = li.id
    INNER JOIN area_conocimiento   ac ON al.area_conocimiento   = ac.id
    WHERE al.estado = 1
    ORDER BY al.linea_investigacion, al.area_conocimiento;
END;
GO

-------------------------------------------------------
-- Obtener por ID ac_linea  
-------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_AC_LINEA_AREA
    @p_linea_investigacion INT,
    @p_area_conocimiento   INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        al.linea_investigacion,
        li.nombre AS nombre_linea,
        al.area_conocimiento,
        ac.disciplina AS nombre_area
    FROM ac_linea al
    INNER JOIN linea_investigacion li ON al.linea_investigacion = li.id
    INNER JOIN area_conocimiento   ac ON al.area_conocimiento   = ac.id
    WHERE al.estado = 1
      AND (@p_linea_investigacion IS NULL OR al.linea_investigacion = @p_linea_investigacion) 
      AND (@p_area_conocimiento IS NULL OR al.area_conocimiento = @p_area_conocimiento)
END;
GO

-------------------------------------------------------
-- Eliminar (Borrado Lógico) ac_linea  
-------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_AC_LINEA
    @p_linea_investigacion INT,
    @p_area_conocimiento   INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM ac_linea
                   WHERE linea_investigacion = @p_linea_investigacion
                     AND area_conocimiento   = @p_area_conocimiento
                     AND estado = 1)
        THROW 50004, N'No se puede eliminar una relación que no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE ac_linea
        SET estado = 0
        WHERE linea_investigacion = @p_linea_investigacion
          AND area_conocimiento   = @p_area_conocimiento;

        SET @p_resultado = JSON_OBJECT(
            'mensaje': 'Relación ac_linea eliminada lógicamente',
            'linea_investigacion': @p_linea_investigacion,
            'area_conocimiento': @p_area_conocimiento
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD A MEDIAS: aa_linea
--  PK compuesta: (linea_investigacion_id, area_aplicacion_id)
-- ============================================================

-------------------------------------------------------
-- Ingresar aa_linea  
-------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_AA_LINEA
    @p_area_aplicacion     INT,
    @p_linea_investigacion INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(500);

    -- Validar que el área de aplicación exista
    IF NOT EXISTS (SELECT 1 FROM area_aplicacion WHERE id = @p_area_aplicacion)
    BEGIN
        SET @v_msg = CONCAT(N'El área de aplicación con ID ',
                            @p_area_aplicacion, N' no existe.');
        THROW 50001, @v_msg, 1;
    END

    -- Validar que la línea de investigación exista
    IF NOT EXISTS (SELECT 1 FROM linea_investigacion WHERE id = @p_linea_investigacion)
    BEGIN
        SET @v_msg = CONCAT(N'La línea de investigación con ID ',
                            @p_linea_investigacion, N' no existe.');
        THROW 50002, @v_msg, 1;
    END

    -- Verificar si ya existe activa
    IF EXISTS (SELECT 1 FROM aa_linea
               WHERE area_aplicacion     = @p_area_aplicacion
                 AND linea_investigacion = @p_linea_investigacion
                 AND estado = 1)
    BEGIN
        SET @v_msg = N'La relación entre esa área de aplicación y línea ya existe y está activa.';
        THROW 50003, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Si existía inactiva, reactivarla; si no, insertar
        IF EXISTS (SELECT 1 FROM aa_linea
                   WHERE area_aplicacion     = @p_area_aplicacion
                     AND linea_investigacion = @p_linea_investigacion)
        BEGIN
            UPDATE aa_linea
            SET estado = 1
            WHERE area_aplicacion     = @p_area_aplicacion
              AND linea_investigacion = @p_linea_investigacion;
        END
        ELSE
        BEGIN
            INSERT INTO aa_linea (area_aplicacion, linea_investigacion, estado)
            VALUES (@p_area_aplicacion, @p_linea_investigacion, 1);
        END

        SET @p_resultado = (
            SELECT area_aplicacion, linea_investigacion, estado
            FROM aa_linea
            WHERE area_aplicacion     = @p_area_aplicacion
              AND linea_investigacion = @p_linea_investigacion
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-------------------------------------------------------
-- Listar Todos (Solo Activos) aa_linea  
-------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_AA_LINEA
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        al.area_aplicacion,
        aa.nombre  AS nombre_area_aplicacion,
        al.linea_investigacion,
        li.nombre  AS nombre_linea,
        al.estado
    FROM aa_linea al
    INNER JOIN area_aplicacion    aa ON al.area_aplicacion     = aa.id
    INNER JOIN linea_investigacion li ON al.linea_investigacion = li.id
    WHERE al.estado = 1
    ORDER BY al.area_aplicacion, al.linea_investigacion;
END;
GO

-------------------------------------------------------
-- Obtener por ID aa_linea  
-------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_AA_LINEA_AREA
    @p_area_aplicacion     INT,
    @p_linea_investigacion INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        al.area_aplicacion,
        aa.nombre  AS nombre_area_aplicacion,
        al.linea_investigacion,
        li.nombre  AS nombre_linea
    FROM aa_linea al
    INNER JOIN area_aplicacion    aa ON al.area_aplicacion     = aa.id
    INNER JOIN linea_investigacion li ON al.linea_investigacion = li.id
    WHERE al.estado = 1
        AND (@p_area_aplicacion IS NULL OR al.area_aplicacion = @p_area_aplicacion)
        AND (@p_linea_investigacion IS NULL OR al.linea_investigacion = @p_linea_investigacion)
END;
GO

-------------------------------------------------------
-- Eliminar (Borrado Lógico) aa_linea  
-------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_AA_LINEA
    @p_area_aplicacion     INT,
    @p_linea_investigacion INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM aa_linea
                   WHERE area_aplicacion     = @p_area_aplicacion
                     AND linea_investigacion = @p_linea_investigacion
                     AND estado = 1)
        THROW 50004, N'No se puede eliminar una relación que no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE aa_linea
        SET estado = 0
        WHERE area_aplicacion     = @p_area_aplicacion
          AND linea_investigacion = @p_linea_investigacion;

        SET @p_resultado = JSON_OBJECT(
            'mensaje': 'Relación aa_linea eliminada lógicamente',
            'area_aplicacion': @p_area_aplicacion,
            'linea_investigacion': @p_linea_investigacion
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD COMPLETO: linea_investigacion
--  (id usa IDENTITY, no se pasa en el INSERT)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar linea_investigacion
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_LINEA_INVESTIGACION
    @p_nombre      NVARCHAR(45),
    @p_descripcion NVARCHAR(256),
    @p_resultado   NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    -- Validar nombre único entre activos
    IF EXISTS (SELECT 1 FROM linea_investigacion
               WHERE nombre = @p_nombre AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'Ya existe una línea de investigación activa con el nombre "', @p_nombre, N'".');
        THROW 50001, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO linea_investigacion (nombre, descripcion, estado)
        VALUES (@p_nombre, @p_descripcion, 1);

        SET @p_resultado = (
            SELECT id, nombre, descripcion, estado
            FROM linea_investigacion
            WHERE id = SCOPE_IDENTITY()
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Actualizar linea_investigacion
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ACTUALIZAR_LINEA_INVESTIGACION
    @p_id          INT,
    @p_nombre      NVARCHAR(45),
    @p_descripcion NVARCHAR(256),
    @p_resultado   NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF NOT EXISTS (SELECT 1 FROM linea_investigacion WHERE id = @p_id AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'La línea de investigación con ID ', @p_id, N' no existe o está inactiva.');
        THROW 50001, @v_msg, 1;
    END

    -- Validar que el nombre no lo use otra línea activa distinta
    IF EXISTS (SELECT 1 FROM linea_investigacion
               WHERE nombre = @p_nombre AND estado = 1 AND id <> @p_id)
    BEGIN
        SET @v_msg = CONCAT(N'Ya existe otra línea de investigación activa con el nombre "', @p_nombre, N'".');
        THROW 50002, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE linea_investigacion
        SET nombre      = @p_nombre,
            descripcion = @p_descripcion
        WHERE id = @p_id;

        SET @p_resultado = (
            SELECT id, nombre, descripcion, estado
            FROM linea_investigacion
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar linea_investigacion (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_LINEAS_INVESTIGACION
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id, nombre, descripcion, estado
    FROM linea_investigacion
    WHERE estado = 1
    ORDER BY id;
END;
GO

-- ------------------------------------------------------------
-- Obtener linea_investigacion por ID
-- ------------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_LINEA_INVESTIGACION_POR_ID_NOMBRE_DESCRIPCION
    @p_id INT = NULL,
    @p_nombre NVARCHAR(45) = NULL,
    @p_descripcion NVARCHAR(256) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT id, nombre, descripcion, estado
    FROM linea_investigacion
    WHERE estado = 1
    AND (@p_id IS NULL OR id = @p_id)
    AND (@p_nombre IS NULL OR nombre LIKE '%' + @p_nombre + '%')
    AND (@p_descripcion IS NULL OR descripcion LIKE '%' + @p_descripcion + '%')
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) linea_investigacion
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_LINEA_INVESTIGACION
    @p_id        INT,
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM linea_investigacion WHERE id = @p_id AND estado = 1)
        THROW 50001, N'No se puede eliminar: la línea de investigación no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE linea_investigacion
        SET estado = 0
        WHERE id = @p_id;

        SET @p_resultado = JSON_OBJECT(
            'mensaje': 'Línea de investigación eliminada lógicamente',
            'id': @p_id
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD COMPLETO: area_aplicacion
--  (id manual, no IDENTITY)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar area_aplicacion
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_AREA_APLICACION
    @p_id        INT,
    @p_nombre    NVARCHAR(60),
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    -- Validar que no exista activa con mismo ID
    IF EXISTS (SELECT 1 FROM area_aplicacion WHERE id = @p_id)
    BEGIN
        SET @v_msg = CONCAT(N'Ya existe un área de aplicación activa con el ID ', @p_id, N'.');
        THROW 50001, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Si existía inactiva, reactivar; si no, insertar
        IF EXISTS (SELECT 1 FROM area_aplicacion WHERE id = @p_id)
        BEGIN
            UPDATE area_aplicacion
            SET nombre = @p_nombre, estado = 1
            WHERE id = @p_id;
        END
        ELSE
        BEGIN
            INSERT INTO area_aplicacion (id, nombre, estado)
            VALUES (@p_id, @p_nombre, 1);
        END

        SET @p_resultado = (
            SELECT id, nombre, estado
            FROM area_aplicacion
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Actualizar area_aplicacion
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ACTUALIZAR_AREA_APLICACION
    @p_id        INT,
    @p_nombre    NVARCHAR(60),
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF NOT EXISTS (SELECT 1 FROM area_aplicacion WHERE id = @p_id AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El área de aplicación con ID ', @p_id, N' no existe o está inactiva.');
        THROW 50001, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE area_aplicacion
        SET nombre = @p_nombre
        WHERE id = @p_id;

        SET @p_resultado = (
            SELECT id, nombre, estado
            FROM area_aplicacion
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar area_aplicacion (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_AREAS_APLICACION
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id, nombre, estado
    FROM area_aplicacion
    WHERE estado = 1
    ORDER BY id;
END;
GO

-- ------------------------------------------------------------
-- Obtener area_aplicacion por ID
-- ------------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_AREA_APLICACION_POR_ID_NOMBRE
    @p_id INT = NULL,
    @p_nombre NVARCHAR(60) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT id, nombre, estado
    FROM area_aplicacion
    WHERE estado = 1
    AND (@p_id IS NULL OR id = @p_id)
    AND (@p_nombre IS NULL OR nombre LIKE '%' + @p_nombre + '%')
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) area_aplicacion
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_AREA_APLICACION
    @p_id        INT,
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM area_aplicacion WHERE id = @p_id AND estado = 1)
        THROW 50001, N'No se puede eliminar: el área de aplicación no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE area_aplicacion
        SET estado = 0
        WHERE id = @p_id;

        SET @p_resultado = JSON_OBJECT(
            'mensaje': 'Área de aplicación eliminada lógicamente',
            'id': @p_id
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD COMPLETO: objetivo_desarrollo_sostenible (ods)
--  (id manual, no IDENTITY)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar objetivo_desarrollo_sostenible
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_ODS
    @p_id        INT,
    @p_nombre    NVARCHAR(60),
    @p_categoria NVARCHAR(45),
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF EXISTS (SELECT 1 FROM objetivo_desarrollo_sostenible WHERE id = @p_id)
    BEGIN
        SET @v_msg = CONCAT(N'Ya existe un ODS activo con el ID ', @p_id, N'.');
        THROW 50001, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        IF EXISTS (SELECT 1 FROM objetivo_desarrollo_sostenible WHERE id = @p_id)
        BEGIN
            UPDATE objetivo_desarrollo_sostenible
            SET nombre = @p_nombre, categoria = @p_categoria, estado = 1
            WHERE id = @p_id;
        END
        ELSE
        BEGIN
            INSERT INTO objetivo_desarrollo_sostenible (id, nombre, categoria, estado)
            VALUES (@p_id, @p_nombre, @p_categoria, 1);
        END

        SET @p_resultado = (
            SELECT id, nombre, categoria, estado
            FROM objetivo_desarrollo_sostenible
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Actualizar objetivo_desarrollo_sostenible
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ACTUALIZAR_ODS
    @p_id        INT,
    @p_nombre    NVARCHAR(60),
    @p_categoria NVARCHAR(45),
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF NOT EXISTS (SELECT 1 FROM objetivo_desarrollo_sostenible WHERE id = @p_id AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El ODS con ID ', @p_id, N' no existe o está inactivo.');
        THROW 50001, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE objetivo_desarrollo_sostenible
        SET nombre    = @p_nombre,
            categoria = @p_categoria
        WHERE id = @p_id;

        SET @p_resultado = (
            SELECT id, nombre, categoria, estado
            FROM objetivo_desarrollo_sostenible
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar objetivo_desarrollo_sostenible (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_ODS
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id, nombre, categoria, estado
    FROM objetivo_desarrollo_sostenible
    WHERE estado = 1
    ORDER BY id;
END;
GO

-- ------------------------------------------------------------
-- Obtener objetivo_desarrollo_sostenible por ID
-- ------------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_ODS_POR_ID_NOMBRE_CATEGORIA
    @p_id INT = NULL,
    @p_nombre NVARCHAR(60) = NULL,
    @p_categoria NVARCHAR(45) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT id, nombre, categoria
    FROM objetivo_desarrollo_sostenible
    WHERE estado = 1
        AND (@p_id IS NULL OR id = @p_id)
        AND (@p_nombre IS NULL OR nombre LIKE '%' + @p_nombre + '%')
        AND (@p_categoria IS NULL OR categoria LIKE '%' + @p_categoria + '%');
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) objetivo_desarrollo_sostenible
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_ODS
    @p_id        INT,
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM objetivo_desarrollo_sostenible WHERE id = @p_id AND estado = 1)
        THROW 50001, N'No se puede eliminar: el ODS no existe o ya está inactivo.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE objetivo_desarrollo_sostenible
        SET estado = 0
        WHERE id = @p_id;

        SET @p_resultado = JSON_OBJECT(
            'mensaje': 'ODS eliminado lógicamente',
            'id': @p_id
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD COMPLETO: area_conocimiento
--  (id manual, no IDENTITY)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar area_conocimiento
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_AREA_CONOCIMIENTO
    @p_id         INT,
    @p_gran_area  NVARCHAR(60),
    @p_area       NVARCHAR(60),
    @p_disciplina NVARCHAR(60),
    @p_resultado  NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF EXISTS (SELECT 1 FROM area_conocimiento WHERE id = @p_id)
    BEGIN
        SET @v_msg = CONCAT(N'Ya existe un área de conocimiento activa con el ID ', @p_id, N'.');
        THROW 50001, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        IF EXISTS (SELECT 1 FROM area_conocimiento WHERE id = @p_id)
        BEGIN
            UPDATE area_conocimiento
            SET gran_area = @p_gran_area, area = @p_area,
                disciplina = @p_disciplina, estado = 1
            WHERE id = @p_id;
        END
        ELSE
        BEGIN
            INSERT INTO area_conocimiento (id, gran_area, area, disciplina, estado)
            VALUES (@p_id, @p_gran_area, @p_area, @p_disciplina, 1);
        END

        SET @p_resultado = (
            SELECT id, gran_area, area, disciplina, estado
            FROM area_conocimiento
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Actualizar area_conocimiento
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ACTUALIZAR_AREA_CONOCIMIENTO
    @p_id         INT,
    @p_gran_area  NVARCHAR(60),
    @p_area       NVARCHAR(60),
    @p_disciplina NVARCHAR(60),
    @p_resultado  NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF NOT EXISTS (SELECT 1 FROM area_conocimiento WHERE id = @p_id AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El área de conocimiento con ID ', @p_id, N' no existe o está inactiva.');
        THROW 50001, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE area_conocimiento
        SET gran_area  = @p_gran_area,
            area       = @p_area,
            disciplina = @p_disciplina
        WHERE id = @p_id;

        SET @p_resultado = (
            SELECT id, gran_area, area, disciplina, estado
            FROM area_conocimiento
            WHERE id = @p_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar area_conocimiento (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_AREAS_CONOCIMIENTO
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id, gran_area, area, disciplina, estado
    FROM area_conocimiento
    WHERE estado = 1
    ORDER BY id;
END;
GO

-- ------------------------------------------------------------
-- Obtener area_conocimiento por ID
-- ------------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_AREA_CONOCIMIENTO_POR_ID_AREA_DISCIPLINA
    @p_id INT = NULL,
    @p_area NVARCHAR(60) = NULL,
    @p_disciplina NVARCHAR(60) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT id, gran_area, area, disciplina
    FROM area_conocimiento
    WHERE estado = 1
        AND (@p_id IS NULL OR id = @p_id)
        AND (@p_area IS NULL OR area LIKE '%' + @p_area + '%')
        AND (@p_disciplina IS NULL OR disciplina LIKE '%' + @p_disciplina + '%');
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) area_conocimiento
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_AREA_CONOCIMIENTO
    @p_id        INT,
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM area_conocimiento WHERE id = @p_id AND estado = 1)
        THROW 50001, N'No se puede eliminar: el área de conocimiento no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE area_conocimiento
        SET estado = 0
        WHERE id = @p_id;

        SET @p_resultado = JSON_OBJECT(
            'mensaje': 'Área de conocimiento eliminada lógicamente',
            'id': @p_id
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD A MEDIAS: participa_grupo
--  PK compuesta: (docente_cedula, grupo_investigacion_id)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar participa_grupo
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_PARTICIPA_GRUPO
    @p_docente_cedula        INT,
    @p_grupo_investigacion_id INT,
    @p_rol                   NVARCHAR(100),
    @p_fecha_inicio          DATE,
    @p_fecha_fin             DATE = NULL,
    @p_resultado             NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    -- Validar que el docente exista y esté activo
    IF NOT EXISTS (SELECT 1 FROM docente WHERE cedula = @p_docente_cedula AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El docente con cédula ', @p_docente_cedula, N' no existe o está inactivo.');
        THROW 50001, @v_msg, 1;
    END

    -- Validar que el grupo exista y esté activo
    IF NOT EXISTS (SELECT 1 FROM grupo_investigacion WHERE id = @p_grupo_investigacion_id AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El grupo de investigación con ID ', @p_grupo_investigacion_id, N' no existe o está inactivo.');
        THROW 50002, @v_msg, 1;
    END

    -- Verificar si ya existe activa
    IF EXISTS (SELECT 1 FROM participa_grupo
               WHERE docente_cedula = @p_docente_cedula
                 AND grupo_investigacion_id = @p_grupo_investigacion_id
                 AND estado = 1)
    BEGIN
        SET @v_msg = N'El docente ya pertenece activamente a ese grupo de investigación.';
        THROW 50003, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        IF EXISTS (SELECT 1 FROM participa_grupo
                   WHERE docente_cedula = @p_docente_cedula
                     AND grupo_investigacion_id = @p_grupo_investigacion_id)
        BEGIN
            UPDATE participa_grupo
            SET rol = @p_rol, fecha_inicio = @p_fecha_inicio,
                fecha_fin = @p_fecha_fin, estado = 1
            WHERE docente_cedula = @p_docente_cedula
              AND grupo_investigacion_id = @p_grupo_investigacion_id;
        END
        ELSE
        BEGIN
            INSERT INTO participa_grupo
                (docente_cedula, grupo_investigacion_id, rol, fecha_inicio, fecha_fin, estado)
            VALUES
                (@p_docente_cedula, @p_grupo_investigacion_id, @p_rol,
                 @p_fecha_inicio, @p_fecha_fin, 1);
        END

        SET @p_resultado = (
            SELECT pg.docente_cedula,
                   d.nombres + ' ' + d.apellidos AS nombre_docente,
                   pg.grupo_investigacion_id,
                   g.nombre  AS nombre_grupo,
                   pg.rol, pg.fecha_inicio, pg.fecha_fin, pg.estado
            FROM participa_grupo pg
            INNER JOIN docente            d ON pg.docente_cedula        = d.cedula
            INNER JOIN grupo_investigacion g ON pg.grupo_investigacion_id = g.id
            WHERE pg.docente_cedula        = @p_docente_cedula
              AND pg.grupo_investigacion_id = @p_grupo_investigacion_id
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar participa_grupo (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_PARTICIPA_GRUPO
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        pg.docente_cedula,
        d.nombres + ' ' + d.apellidos AS nombre_docente,
        pg.grupo_investigacion_id,
        g.nombre  AS nombre_grupo,
        pg.rol,
        CONVERT(NVARCHAR(10), pg.fecha_inicio, 120) AS fecha_inicio,
        CONVERT(NVARCHAR(10), pg.fecha_fin, 120) AS fecha_fin,
        pg.estado
    FROM participa_grupo pg
    INNER JOIN docente            d ON pg.docente_cedula        = d.cedula
    INNER JOIN grupo_investigacion g ON pg.grupo_investigacion_id = g.id
    WHERE pg.estado = 1
    ORDER BY pg.docente_cedula, pg.grupo_investigacion_id;
END;
GO

-- ------------------------------------------------------------
-- Obtener participa_grupo por clave compuesta
-- ------------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_PARTICIPA_GRUPO_POR_ID_GRUPO
    @p_docente_cedula INT = NULL,
    @p_grupo_investigacion_id INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        pg.docente_cedula,
        d.nombres + ' ' + d.apellidos AS nombre_docente,
        pg.grupo_investigacion_id,
        g.nombre  AS nombre_grupo,
        pg.rol,
        CONVERT(NVARCHAR(10), pg.fecha_inicio, 120) AS fecha_inicio,
        CONVERT(NVARCHAR(10), pg.fecha_fin, 120) AS fecha_fin,
        pg.estado
    FROM participa_grupo pg
    INNER JOIN docente            d ON pg.docente_cedula        = d.cedula
    INNER JOIN grupo_investigacion g ON pg.grupo_investigacion_id = g.id
    WHERE pg.estado = 1
        AND (@p_docente_cedula IS NULL OR pg.docente_cedula = @p_docente_cedula)
        AND (@p_grupo_investigacion_id IS NULL OR pg.grupo_investigacion_id = @p_grupo_investigacion_id);
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) participa_grupo
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_PARTICIPA_GRUPO
    @p_docente_cedula         INT,
    @p_grupo_investigacion_id INT,
    @p_resultado              NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM participa_grupo
                   WHERE docente_cedula        = @p_docente_cedula
                     AND grupo_investigacion_id = @p_grupo_investigacion_id
                     AND estado = 1)
        THROW 50001, N'No se puede eliminar: la participación no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE participa_grupo
        SET estado = 0
        WHERE docente_cedula        = @p_docente_cedula
          AND grupo_investigacion_id = @p_grupo_investigacion_id;

        SET @p_resultado = JSON_OBJECT(
            'mensaje'                 : 'Participación en grupo eliminada lógicamente',
            'docente_cedula'          : @p_docente_cedula,
            'grupo_investigacion_id'  : @p_grupo_investigacion_id
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD A MEDIAS: participa_semillero
--  PK compuesta: (docente, semillero)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar participa_semillero
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_PARTICIPA_SEMILLERO
    @p_docente      INT,
    @p_semillero    INT,
    @p_rol          NVARCHAR(15),
    @p_fecha_inicio DATE,
    @p_fecha_fin    DATE = NULL,
    @p_resultado    NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF NOT EXISTS (SELECT 1 FROM docente WHERE cedula = @p_docente AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El docente con cédula ', @p_docente, N' no existe o está inactivo.');
        THROW 50001, @v_msg, 1;
    END

    IF NOT EXISTS (SELECT 1 FROM semillero WHERE id = @p_semillero AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El semillero con ID ', @p_semillero, N' no existe o está inactivo.');
        THROW 50002, @v_msg, 1;
    END

    IF EXISTS (SELECT 1 FROM participa_semillero
               WHERE docente = @p_docente AND semillero = @p_semillero AND estado = 1)
    BEGIN
        SET @v_msg = N'El docente ya participa activamente en ese semillero.';
        THROW 50003, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        IF EXISTS (SELECT 1 FROM participa_semillero
                   WHERE docente = @p_docente AND semillero = @p_semillero)
        BEGIN
            UPDATE participa_semillero
            SET rol = @p_rol, fecha_inicio = @p_fecha_inicio,
                fecha_fin = @p_fecha_fin, estado = 1
            WHERE docente = @p_docente AND semillero = @p_semillero;
        END
        ELSE
        BEGIN
            INSERT INTO participa_semillero
                (docente, semillero, rol, fecha_inicio, fecha_fin, estado)
            VALUES
                (@p_docente, @p_semillero, @p_rol, @p_fecha_inicio, @p_fecha_fin, 1);
        END

        SET @p_resultado = (
            SELECT ps.docente,
                   d.nombres + ' ' + d.apellidos AS nombre_docente,
                   ps.semillero,
                   s.nombre AS nombre_semillero,
                   ps.rol, ps.fecha_inicio, ps.fecha_fin, ps.estado
            FROM participa_semillero ps
            INNER JOIN docente   d ON ps.docente   = d.cedula
            INNER JOIN semillero s ON ps.semillero = s.id
            WHERE ps.docente = @p_docente AND ps.semillero = @p_semillero
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar participa_semillero (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_PARTICIPA_SEMILLERO
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        ps.docente,
        d.nombres + ' ' + d.apellidos AS nombre_docente,
        ps.semillero,
        s.nombre AS nombre_semillero,
        ps.rol,
        CONVERT(NVARCHAR(10), ps.fecha_inicio, 120) AS fecha_inicio,
        CONVERT(NVARCHAR(10), ps.fecha_fin, 120) AS fecha_fin,
        ps.estado
    FROM participa_semillero ps
    INNER JOIN docente   d ON ps.docente   = d.cedula
    INNER JOIN semillero s ON ps.semillero = s.id
    WHERE ps.estado = 1
    ORDER BY ps.docente, ps.semillero;
END;
GO

-- ------------------------------------------------------------
-- Obtener participa_semillero por clave compuesta
-- ------------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_PARTICIPA_SEMILLERO_POR_ID_SEMILLERO
    @p_docente INT = NULL,
    @p_semillero INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ps.docente,
        d.nombres + ' ' + d.apellidos AS nombre_docente,
        ps.semillero,
        s.nombre AS nombre_semillero,
        ps.rol,
        CONVERT(NVARCHAR(10), ps.fecha_inicio, 120) AS fecha_inicio,
        CONVERT(NVARCHAR(10), ps.fecha_fin, 120) AS fecha_fin,
        ps.estado
    FROM participa_semillero ps
    INNER JOIN docente   d ON ps.docente   = d.cedula
    INNER JOIN semillero s ON ps.semillero = s.id
    WHERE ps.estado = 1
        AND (@p_docente IS NULL OR ps.docente = @p_docente)
        AND (@p_semillero IS NULL OR ps.semillero = @p_semillero);
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) participa_semillero
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_PARTICIPA_SEMILLERO
    @p_docente   INT,
    @p_semillero INT,
    @p_resultado NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM participa_semillero
                   WHERE docente = @p_docente AND semillero = @p_semillero AND estado = 1)
        THROW 50001, N'No se puede eliminar: la participación no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE participa_semillero
        SET estado = 0
        WHERE docente = @p_docente AND semillero = @p_semillero;

        SET @p_resultado = JSON_OBJECT(
            'mensaje'   : 'Participación en semillero eliminada lógicamente',
            'docente'   : @p_docente,
            'semillero' : @p_semillero
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD A MEDIAS: grupo_linea
--  PK compuesta: (grupo_investigacion, linea_investigacion)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar grupo_linea
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_GRUPO_LINEA
    @p_grupo_investigacion INT,
    @p_linea_investigacion INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF NOT EXISTS (SELECT 1 FROM grupo_investigacion WHERE id = @p_grupo_investigacion AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El grupo de investigación con ID ', @p_grupo_investigacion, N' no existe o está inactivo.');
        THROW 50001, @v_msg, 1;
    END

    IF NOT EXISTS (SELECT 1 FROM linea_investigacion WHERE id = @p_linea_investigacion AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'La línea de investigación con ID ', @p_linea_investigacion, N' no existe o está inactiva.');
        THROW 50002, @v_msg, 1;
    END

    IF EXISTS (SELECT 1 FROM grupo_linea
               WHERE grupo_investigacion = @p_grupo_investigacion
                 AND linea_investigacion = @p_linea_investigacion
                 AND estado = 1)
    BEGIN
        SET @v_msg = N'La relación entre ese grupo y esa línea ya existe y está activa.';
        THROW 50003, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        IF EXISTS (SELECT 1 FROM grupo_linea
                   WHERE grupo_investigacion = @p_grupo_investigacion
                     AND linea_investigacion = @p_linea_investigacion)
        BEGIN
            UPDATE grupo_linea
            SET estado = 1
            WHERE grupo_investigacion = @p_grupo_investigacion
              AND linea_investigacion = @p_linea_investigacion;
        END
        ELSE
        BEGIN
            INSERT INTO grupo_linea (grupo_investigacion, linea_investigacion, estado)
            VALUES (@p_grupo_investigacion, @p_linea_investigacion, 1);
        END

        SET @p_resultado = (
            SELECT gl.grupo_investigacion,
                   g.nombre AS nombre_grupo,
                   gl.linea_investigacion,
                   li.nombre AS nombre_linea,
                   gl.estado
            FROM grupo_linea gl
            INNER JOIN grupo_investigacion g  ON gl.grupo_investigacion = g.id
            INNER JOIN linea_investigacion li ON gl.linea_investigacion = li.id
            WHERE gl.grupo_investigacion = @p_grupo_investigacion
              AND gl.linea_investigacion = @p_linea_investigacion
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar grupo_linea (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_GRUPO_LINEA
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        gl.grupo_investigacion,
        g.nombre  AS nombre_grupo,
        gl.linea_investigacion,
        li.nombre AS nombre_linea,
        gl.estado
    FROM grupo_linea gl
    INNER JOIN grupo_investigacion g  ON gl.grupo_investigacion = g.id
    INNER JOIN linea_investigacion li ON gl.linea_investigacion = li.id
    WHERE gl.estado = 1
    ORDER BY gl.grupo_investigacion, gl.linea_investigacion;
END;
GO

-- ------------------------------------------------------------
-- Obtener grupo_linea por clave compuesta
-- ------------------------------------------------------------
CREATE PROCEDURE SP_BUSCAR_GRUPO_LINEA
    @p_grupo_investigacion INT = NULL,
    @p_linea_investigacion INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        gl.grupo_investigacion,
        g.nombre  AS nombre_grupo,
        gl.linea_investigacion,
        li.nombre AS nombre_linea,
        gl.estado
    FROM grupo_linea gl
    INNER JOIN grupo_investigacion g  ON gl.grupo_investigacion = g.id
    INNER JOIN linea_investigacion li ON gl.linea_investigacion = li.id
    WHERE 
        gl.estado = 1
        AND (@p_grupo_investigacion IS NULL OR gl.grupo_investigacion = @p_grupo_investigacion)
        AND (@p_linea_investigacion IS NULL OR gl.linea_investigacion = @p_linea_investigacion);
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) grupo_linea
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_GRUPO_LINEA
    @p_grupo_investigacion INT,
    @p_linea_investigacion INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM grupo_linea
                   WHERE grupo_investigacion = @p_grupo_investigacion
                     AND linea_investigacion = @p_linea_investigacion
                     AND estado = 1)
        THROW 50001, N'No se puede eliminar: la relación no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE grupo_linea
        SET estado = 0
        WHERE grupo_investigacion = @p_grupo_investigacion
          AND linea_investigacion = @p_linea_investigacion;

        SET @p_resultado = JSON_OBJECT(
            'mensaje'               : 'Relación grupo_linea eliminada lógicamente',
            'grupo_investigacion'   : @p_grupo_investigacion,
            'linea_investigacion'   : @p_linea_investigacion
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD A MEDIAS: semillero_linea
--  PK compuesta: (semillero, linea_investigacion)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar semillero_linea
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_SEMILLERO_LINEA
    @p_semillero           INT,
    @p_linea_investigacion INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF NOT EXISTS (SELECT 1 FROM semillero WHERE id = @p_semillero AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El semillero con ID ', @p_semillero, N' no existe o está inactivo.');
        THROW 50001, @v_msg, 1;
    END

    IF NOT EXISTS (SELECT 1 FROM linea_investigacion WHERE id = @p_linea_investigacion AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'La línea de investigación con ID ', @p_linea_investigacion, N' no existe o está inactiva.');
        THROW 50002, @v_msg, 1;
    END

    IF EXISTS (SELECT 1 FROM semillero_linea
               WHERE semillero = @p_semillero
                 AND linea_investigacion = @p_linea_investigacion
                 AND estado = 1)
    BEGIN
        SET @v_msg = N'La relación entre ese semillero y esa línea ya existe y está activa.';
        THROW 50003, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        IF EXISTS (SELECT 1 FROM semillero_linea
                   WHERE semillero = @p_semillero
                     AND linea_investigacion = @p_linea_investigacion)
        BEGIN
            UPDATE semillero_linea
            SET estado = 1
            WHERE semillero = @p_semillero
              AND linea_investigacion = @p_linea_investigacion;
        END
        ELSE
        BEGIN
            INSERT INTO semillero_linea (semillero, linea_investigacion, estado)
            VALUES (@p_semillero, @p_linea_investigacion, 1);
        END

        SET @p_resultado = (
            SELECT sl.semillero,
                   s.nombre  AS nombre_semillero,
                   sl.linea_investigacion,
                   li.nombre AS nombre_linea,
                   sl.estado
            FROM semillero_linea sl
            INNER JOIN semillero          s  ON sl.semillero           = s.id
            INNER JOIN linea_investigacion li ON sl.linea_investigacion = li.id
            WHERE sl.semillero = @p_semillero
              AND sl.linea_investigacion = @p_linea_investigacion
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar semillero_linea (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_SEMILLERO_LINEA
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        sl.semillero,
        s.nombre  AS nombre_semillero,
        sl.linea_investigacion,
        li.nombre AS nombre_linea,
        sl.estado
    FROM semillero_linea sl
    INNER JOIN semillero          s  ON sl.semillero           = s.id
    INNER JOIN linea_investigacion li ON sl.linea_investigacion = li.id
    WHERE sl.estado = 1
    ORDER BY sl.semillero, sl.linea_investigacion;
END;
GO

-- ------------------------------------------------------------
-- Obtener semillero_linea por clave compuesta
-- ------------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_SEMILLERO_LINEA_POR_ID_LINEA
    @p_semillero INT = NULL,
    @p_linea_investigacion INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        sl.semillero,
        s.nombre  AS nombre_semillero,
        sl.linea_investigacion,
        li.nombre AS nombre_linea,
        sl.estado
    FROM semillero_linea sl
    INNER JOIN semillero          s  ON sl.semillero           = s.id
    INNER JOIN linea_investigacion li ON sl.linea_investigacion = li.id
    WHERE sl.estado = 1
        AND (@p_semillero IS NULL OR sl.semillero = @p_semillero)
        AND (@p_linea_investigacion IS NULL OR sl.linea_investigacion = @p_linea_investigacion);
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) semillero_linea
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_SEMILLERO_LINEA
    @p_semillero           INT,
    @p_linea_investigacion INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM semillero_linea
                   WHERE semillero = @p_semillero
                     AND linea_investigacion = @p_linea_investigacion
                     AND estado = 1)
        THROW 50001, N'No se puede eliminar: la relación no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE semillero_linea
        SET estado = 0
        WHERE semillero = @p_semillero
          AND linea_investigacion = @p_linea_investigacion;

        SET @p_resultado = JSON_OBJECT(
            'mensaje'               : 'Relación semillero_linea eliminada lógicamente',
            'semillero'             : @p_semillero,
            'linea_investigacion'   : @p_linea_investigacion
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-- ============================================================
--  CRUD A MEDIAS: ods_linea
--  PK compuesta: (linea_investigacion, ods)
-- ============================================================

-- ------------------------------------------------------------
-- Ingresar ods_linea
-- ------------------------------------------------------------
CREATE PROCEDURE SP_INGRESAR_ODS_LINEA
    @p_linea_investigacion INT,
    @p_ods                 INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @v_msg NVARCHAR(256);

    IF NOT EXISTS (SELECT 1 FROM linea_investigacion WHERE id = @p_linea_investigacion AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'La línea de investigación con ID ', @p_linea_investigacion, N' no existe o está inactiva.');
        THROW 50001, @v_msg, 1;
    END

    IF NOT EXISTS (SELECT 1 FROM objetivo_desarrollo_sostenible WHERE id = @p_ods AND estado = 1)
    BEGIN
        SET @v_msg = CONCAT(N'El ODS con ID ', @p_ods, N' no existe o está inactivo.');
        THROW 50002, @v_msg, 1;
    END

    IF EXISTS (SELECT 1 FROM ods_linea
               WHERE linea_investigacion = @p_linea_investigacion
                 AND ods = @p_ods
                 AND estado = 1)
    BEGIN
        SET @v_msg = N'La relación entre esa línea y ese ODS ya existe y está activa.';
        THROW 50003, @v_msg, 1;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        IF EXISTS (SELECT 1 FROM ods_linea
                   WHERE linea_investigacion = @p_linea_investigacion
                     AND ods = @p_ods)
        BEGIN
            UPDATE ods_linea
            SET estado = 1
            WHERE linea_investigacion = @p_linea_investigacion
              AND ods = @p_ods;
        END
        ELSE
        BEGIN
            INSERT INTO ods_linea (linea_investigacion, ods, estado)
            VALUES (@p_linea_investigacion, @p_ods, 1);
        END

        SET @p_resultado = (
            SELECT ol.linea_investigacion,
                   li.nombre  AS nombre_linea,
                   ol.ods,
                   o.nombre   AS nombre_ods,
                   o.categoria,
                   ol.estado
            FROM ods_linea ol
            INNER JOIN linea_investigacion           li ON ol.linea_investigacion = li.id
            INNER JOIN objetivo_desarrollo_sostenible o  ON ol.ods               = o.id
            WHERE ol.linea_investigacion = @p_linea_investigacion
              AND ol.ods = @p_ods
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO

-- ------------------------------------------------------------
-- Listar ods_linea (activos)
-- ------------------------------------------------------------
CREATE PROCEDURE SP_LISTAR_ODS_LINEA
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        ol.linea_investigacion,
        li.nombre  AS nombre_linea,
        ol.ods,
        o.nombre   AS nombre_ods,
        o.categoria,
        ol.estado
    FROM ods_linea ol
    INNER JOIN linea_investigacion           li ON ol.linea_investigacion = li.id
    INNER JOIN objetivo_desarrollo_sostenible o  ON ol.ods               = o.id
    WHERE ol.estado = 1
    ORDER BY ol.linea_investigacion, ol.ods;
END;
GO

-- ------------------------------------------------------------
-- Obtener ods_linea por clave compuesta
-- ------------------------------------------------------------
CREATE PROCEDURE SP_OBTENER_ODS_LINEA_POR_ID_LINEA
    @p_linea_investigacion INT = NULL,
    @p_ods INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ol.linea_investigacion,
        li.nombre  AS nombre_linea,
        ol.ods,
        o.nombre   AS nombre_ods,
        o.categoria,
        ol.estado
    FROM ods_linea ol
    INNER JOIN linea_investigacion           li ON ol.linea_investigacion = li.id
    INNER JOIN objetivo_desarrollo_sostenible o  ON ol.ods               = o.id
    WHERE ol.estado = 1
        AND (@p_linea_investigacion IS NULL OR ol.linea_investigacion = @p_linea_investigacion)
        AND (@p_ods IS NULL OR ol.ods = @p_ods);
END;
GO

-- ------------------------------------------------------------
-- Eliminar (borrado lógico) ods_linea
-- ------------------------------------------------------------
CREATE PROCEDURE SP_ELIMINAR_ODS_LINEA
    @p_linea_investigacion INT,
    @p_ods                 INT,
    @p_resultado           NVARCHAR(MAX) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM ods_linea
                   WHERE linea_investigacion = @p_linea_investigacion
                     AND ods = @p_ods
                     AND estado = 1)
        THROW 50001, N'No se puede eliminar: la relación no existe o ya está inactiva.', 1;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE ods_linea
        SET estado = 0
        WHERE linea_investigacion = @p_linea_investigacion
          AND ods = @p_ods;

        SET @p_resultado = JSON_OBJECT(
            'mensaje'               : 'Relación ods_linea eliminada lógicamente',
            'linea_investigacion'   : @p_linea_investigacion,
            'ods'                   : @p_ods
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO


-------------------------------------------------------------------
-- SP necesarias para mostrar información
--------------------------------------------------------------------

CREATE PROCEDURE SP_LISTAR_UNIVERSIDADES
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id, nombre, tipo, ciudad
    FROM universidad
    ORDER BY id;
END;
GO


CREATE PROCEDURE SP_LISTAR_DOCENTES
AS
BEGIN
    SET NOCOUNT ON;

    SELECT cedula, nombres, apellidos, cargo
    FROM docente
    ORDER BY cedula;
END;
GO
