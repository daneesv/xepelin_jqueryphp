/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : xepelin

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 04/10/2021 03:37:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for testimonials
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stars` int NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `link` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sequence` int NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testimonials
-- ----------------------------
INSERT INTO `testimonials` VALUES (1, 1633300087, 'Andrés Rosales', 'Gerente general de Sacer Spa', 'La mejor experiencia', 4, '“En un principio habíamos pensado en acudir a algún banco, pero el problema es que necesitábamos una serie de documentos y trámites, pero no nos daba el tiempo, por eso también estamos muy agradecidos con Xepelin, porque confiaron en nosotros. Gracias a esta alternativa de financiamiento comenzamos a tener mas flujo, lo que nos permitió pagar sueldos, cotizaciones e impuestos al día, además de comprar materiales.”\r\n\r\nCon tan solo 7 meses de funcionamiento a toda máquina, la empresa de soluciones de acero SACER ha sabido cómo lidiar con las dificultades que conlleva el emprender con un negocio de manera autónoma.', 'https://blog.xepelin.com/sacer-emprender-en-tiempos-de-crisis/', 1, 1);
INSERT INTO `testimonials` VALUES (2, 1633300087, 'Carlos Zapata', 'Gerente general de Zapata Ltda.', 'La tranquilidad de contar con liquidez', 5, '“Nunca habíamos trabajado con alternativas de financiamiento, y al principio operamos con Xepelin porque nuestros clientes, debido a la contingencia, comenzaron a atrasarse en los pagos. Iba a ser algo de una sola vez, pero quedamos muy contentos con el servicio que nos prestaron, las operaciones fueron rápidas, las instrucciones super claras, y nos ayudaron bastante. Ahora cada factura que nos llega la enviamos a Xepelin.”\r\n\r\nLa liquidez es considerada uno de los elementos más importantes para que una empresa pueda mantener sus operaciones de manera estable.', 'https://blog.xepelin.com/zapata-zapata-la-tranquilidad-de-contar-con-liquidez/', 2, 1);
INSERT INTO `testimonials` VALUES (3, 1633300087, 'Leonardo Moncada', 'Ing. y Montajes Cerro Bramador Spa', 'La virtud de ser persistentes', 3, '“Antes de conocer Xepelin, buscábamos alternativas de financiamiento según el tiempo de respuesta, pero al conocer Xepelin los elegimos porque, además de ser rápidos, ofrecen tasas mucho más bajas, y además nos permitieron acceder a capital de trabajo, algo que solo nos habían ofrecido en un banco hace 3 o 4 años...”\r\n\r\nSon siete años y tres intentos de emprender los que ayudaron a la empresa Atacameña, Cerro Bramador a ser lo que son hoy.', 'https://blog.xepelin.com/cerro-bramador-la-virtud-de-ser/', 3, 1);

SET FOREIGN_KEY_CHECKS = 1;
