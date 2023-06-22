

--
-- Base de datos: `dietxupiicsa`
--
drop database if exists dietxupiicsa;
create database dietxupiicsa;
use dietxupiicsa;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login usuario`
--

CREATE TABLE `login usuario` (
  `ID` int(11) NOT NULL COMMENT 'Este es el id incremental que se le asignara al usuario como llave primaria',
  `nombre` varchar(50) NOT NULL COMMENT 'Nombre del usuario',
  `password` varchar(12) NOT NULL COMMENT 'Contraseña del usuario',
  `email` varchar(50) NOT NULL COMMENT 'Email del usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--
CREATE TABLE `planes` (
  `ID_plan` int(11) NOT NULL COMMENT 'Id del plan como llave primaria',
  `nombre_plan` varchar(30) NOT NULL COMMENT 'Nombre del plan',
  `descripcion` varchar(300) NOT NULL COMMENT 'Descripcion del plan',
  `follow` tinyint(1) NOT NULL COMMENT 'follow para el plan',
  `like` tinyint(1) NOT NULL COMMENT 'like para el plan',
  `visible` tinyint(1) NOT NULL COMMENT 'visible para el plan',
  `img_url` nvarchar(500) DEFAULT NULL COMMENT 'url de la imagen que vamos a almacenar'
);




--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login usuario`
--
ALTER TABLE `login usuario`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`ID_plan`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login usuario`
--
ALTER TABLE `login usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Este es el id incremental que se le asignara al usuario como llave primaria';

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `ID_plan` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id del plan como llave primaria';
COMMIT;



INSERT INTO dietxupiicsa.`login usuario` (nombre, password, email)
VALUES ('admin', 'admin', 'admin@example.com');

INSERT INTO dietxupiicsa.`login usuario` (nombre, password, email)
VALUES ('turi', 'turi', 'turi@example.com');




INSERT INTO dietxupiicsa.planes (nombre_plan, descripcion, follow, `like`, visible)
VALUES ('musculo', 'lorem', 1, 0, 1);

INSERT INTO dietxupiicsa.planes (nombre_plan, descripcion, follow, `like`, visible)
VALUES ('fit', 'lorem', 0, 1, 1);

INSERT INTO dietxupiicsa.planes (nombre_plan, descripcion, follow, `like`, visible)
VALUES ('hidden', 'lorem 2', 0, 0, 0);

