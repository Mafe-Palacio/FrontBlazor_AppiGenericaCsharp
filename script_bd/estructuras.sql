
USE bd_csharp
GO

-- Insertar datos

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


-- para el borrado lógico se insertará la columna de "estado" para manejarlo en bits

ALTER TABLE dbo.semillero
ADD estado BIT NOT NULL;
GO

ALTER TABLE dbo.grupo_investigacion
ADD estado BIT NOT NULL;
GO

ALTER TABLE dbo.ac_linea
ADD estado BIT NOT NULL;
GO

ALTER TABLE dbo.aa_linea
ADD estado BIT NOT NULL;
GO


ALTER TABLE dbo.semillero
ADD CONSTRAINT semillero_estado DEFAULT 1 FOR estado;
GO

ALTER TABLE dbo.grupo_investigacion
ADD CONSTRAINT grupo_investigacion_estado DEFAULT 1 FOR estado;
GO

ALTER TABLE dbo.ac_linea
ADD CONSTRAINT ac_linea_estado DEFAULT 1 FOR estado;
GO

ALTER TABLE dbo.aa_linea
ADD CONSTRAINT aa_lineao_estado DEFAULT 1 FOR estado;
GO


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


--Tablas que si me tocaron
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

-- CRUD Completo
-- grupo_investigacion, semillero 


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
CREATE PROCEDURE sp_actualizar_grupo_investigacion
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

CREATE PROCEDURE SP_OBTENER_GRUPO_POR_ID
    @p_id INT
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM grupo_investigacion WHERE id = @p_id AND estado = 1)
        THROW 50003, N'Grupo no encontrado o inactivo.', 1;

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
    WHERE g.id = @p_id AND g.estado = 1;
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

CREATE PROCEDURE SP_OBTENER_SEMILLERO_POR_ID
    @p_id INT
AS
BEGIN
    SET NOCOUNT ON;
    IF NOT EXISTS (SELECT 1 FROM semillero WHERE id = @p_id AND estado = 1)
        THROW 50003, N'Semillero no encontrado o inactivo.', 1;

    SELECT
        s.id,
        s.nombre,
        CONVERT(NVARCHAR(10), s.fecha_fundacion, 120) AS fecha_fundacion,
        s.grupo_investigacion,
        g.nombre AS nombre_grupo,
        s.estado
    FROM semillero s
    INNER JOIN grupo_investigacion g ON s.grupo_investigacion = g.id
    WHERE s.id = @p_id AND s.estado = 1;
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
        ac.area    AS nombre_area,
        ac.disciplina,
        al.estado
    FROM ac_linea al
    INNER JOIN linea_investigacion li ON al.linea_investigacion = li.id
    INNER JOIN area_conocimiento   ac ON al.area_conocimiento   = ac.id
    WHERE al.estado = 1
    ORDER BY al.linea_investigacion, al.area_conocimiento;
    -- SIN FOR JSON PATH
END;
GO

-------------------------------------------------------
-- Obtener por ID ac_linea  
-------------------------------------------------------

CREATE PROCEDURE SP_OBTENER_AC_LINEA
    @p_linea_investigacion INT,
    @p_area_conocimiento   INT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM ac_linea
                   WHERE linea_investigacion = @p_linea_investigacion
                     AND area_conocimiento   = @p_area_conocimiento
                     AND estado = 1)
        THROW 50004, N'Relación ac_linea no encontrada o inactiva.', 1;

    SELECT
        al.linea_investigacion,
        li.nombre  AS nombre_linea,
        al.area_conocimiento,
        ac.gran_area,
        ac.area    AS nombre_area,
        ac.disciplina,
        al.estado
    FROM ac_linea al
    INNER JOIN linea_investigacion li ON al.linea_investigacion = li.id
    INNER JOIN area_conocimiento   ac ON al.area_conocimiento   = ac.id
    WHERE al.linea_investigacion = @p_linea_investigacion
      AND al.area_conocimiento   = @p_area_conocimiento
      AND al.estado = 1
    FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
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

CREATE PROCEDURE SP_OBTENER_AA_LINEA
    @p_area_aplicacion     INT,
    @p_linea_investigacion INT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM aa_linea
                   WHERE area_aplicacion     = @p_area_aplicacion
                     AND linea_investigacion = @p_linea_investigacion
                     AND estado = 1)
        THROW 50004, N'Relación aa_linea no encontrada o inactiva.', 1;

    SELECT
        al.area_aplicacion,
        aa.nombre  AS nombre_area_aplicacion,
        al.linea_investigacion,
        li.nombre  AS nombre_linea,
        al.estado
    FROM aa_linea al
    INNER JOIN area_aplicacion    aa ON al.area_aplicacion     = aa.id
    INNER JOIN linea_investigacion li ON al.linea_investigacion = li.id
    WHERE al.area_aplicacion     = @p_area_aplicacion
      AND al.linea_investigacion = @p_linea_investigacion
      AND al.estado = 1
    FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
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

CREATE PROCEDURE SP_LISTAR_LINEA_INVESTIGACION
AS
BEGIN
    SET NOCOUNT ON;

    SELECT id, nombre
    FROM linea_investigacion
    ORDER BY id;
END;
GO

CREATE PROCEDURE SP_LISTAR_AREA_CONOCIMIENTO
AS
BEGIN
    SET NOCOUNT ON;

    SELECT id, disciplina
    FROM area_conocimiento
    ORDER BY id;
END;
GO

CREATE PROCEDURE SP_LISTAR_AREA_APLICACION
AS
BEGIN
    SET NOCOUNT ON;

    SELECT id, nombre
    FROM area_aplicacion
    ORDER BY id;
END;
GO