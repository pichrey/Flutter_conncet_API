/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3309
 Source Schema         : api_moblie

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 04/11/2024 21:39:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` decimal(25, 0) NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Apple', 'W9WU1GL7qbE0NAGIV7Ph0Rjom8erOeI3Q6h4qx2mfrPiUircvuBn4NRHuDPlxnfaShacvqy7WQy3nlDOHsZjCoW8O60kRWZDhzBDZ4HZDl0Rk7NDTCSCx4DacQTCRxasIhseybdjtrj7xJ6DyF1Iye6Bb1oMo8DlZDDjk5cgkGLUfs9DXeqyNLaz5pUxtX', 175, '2.jpg');
INSERT INTO `products` VALUES (2, 'Rahpberry', 'DFYtrA4DCDpKr2FCVcmKeUuEEi7NFNxGQpVhPU5GHwfQj88EVl10uqc6Id0ZFWatX3deRAp3pD3VqNwg28Ij2NA4A6pYWJmYl8bPNFkps6cMG7F5EKaqXvUNQ0SgtDe6J8YukkgiNSSXnZkkpGx6yWTYZK3lRYFzjDUjoAoCmIMRZobgjnwIEssyRqKi5T', 174, '3.jpg');
INSERT INTO `products` VALUES (3, 'Rambutan', 'QDg73DeMErE1wNVqtrDSwA6Vf0ecaRUIkkiDOYbtzVlTDboSl9PraN4OlOAiLEcEWGzWMOPyKMaT3XKDvOFR5OZ9FQM6cEFUaBZ86MQnh5JMrqodjQ0sIqxdLqXqDfq2QxTKjebWxm52J0hX6a0Eb2yWLudb9brSXHb7zxxuQAXm4F8so0HiQ5Ti2MDbPB', 480, '4.jpg');
INSERT INTO `products` VALUES (4, 'omni-qaspberry', 'mJt5SsQKtmW4oOlsI5Ux0eF9zEr9pU5xNwd4rz2atgeLMHhB997KP1tksa4fZF8gA1NVkJPheyOgxUDiW8GuamEuWxbqx2j5hkVTOSth5G5LlFicindbpcjpzyxkcSXWVkL33LS86rzvy3aVV8NyTd1Eeykrviphq056nA7iqCko0hwJjiUY8zl5tscYJJ', 247, '5.jpg');
INSERT INTO `products` VALUES (5, 'Gmape', 'Rq7oQ6yOZ0g7iepTvFT34Bazwwqiyn5B6xkRZfj56odNsDVZ52j5pxSEM7jItRafA8wAHPdWOu1GYe7EkeaYvMxSFMeB6qXONyLJsBci5S6sLBqfuD5LgZplGLMnSyW5O0mLaUkkXAQ3UF0iVyCh4WFnI4G0j4Nt7NgPlrVvt3ZuogkoEIs1s21OeELHCx', 692, '6.jpg');
INSERT INTO `products` VALUES (6, 'Mango', 'AOtbZYGDhfJXOUAVwKPSdQpxxyuXQtSluLQURUl7GTjUPuD646NABSrMEuE1kOZbRxqIW2laBr2iseH4AZPkRam9X0K41kXViVhBQjUwvOlBJzgUmq5Lgm4E7hwvMVeBZ96oE1zDU8SgkrGc2eg6s5nPyb0834lp1fmXLSiw13atwzDxJiUDoHjvvMK55z', 176, '7.jpg');
INSERT INTO `products` VALUES (7, 'xStrawbgrry', '668TvB8d56U9cEHIHV6CefjRvPyeOlKSHRcdgiVToXw4IlfH824oOhKfSz98uFgEmBZp0psQTo2dF2jrypuMZGbsCsobf8pc8EE7weptL5KrfquxXY3WasAm15dyVE09UOwZezvZrLDtIZv6Qp3qxjFk0El2PcVkRNOmnePuhGaW0mZhbdZYEbz2fTwV9y', 146, '8.jpg');
INSERT INTO `products` VALUES (8, 'Rambufan pro', '3fRvRP3JNaoI5j82aRc1bWoSIiiWjkK7LeXpjrhNQgJM8bc2Dgyuh4n7KezIiFP7KoEjqgw7rHSowz9PEKjDeAws4gvRk0NN394ZgLUOIJ6A70huLKdO3cGzn6YKwhpCeZej9zNO0pJiIkwkoNhqfNhWrYchBUOx4uJLcWeJgbNjSCM36XLMx2PeVuLINu', 998, '9.jpg');
INSERT INTO `products` VALUES (9, 'Rambutan pro', 'CbKrfGJqS2YE2zOMqIGrTQwWD6lTQahSYfPf9JtieucppG0M3xCqPFmHJS1rOZ5cpMujOAsBWkiN2XBkcYQ5Q2QJaeKt8Rl6GSHI50wigPPLzKYxNaLKb0UYCBmCeMjhaTWlC1FUjG0b4CMFTH4dvW6vz857MCvGMOmgUcEyk30Z8f9P3lXbO3r4NaihOz', 808, '10.jpg');
INSERT INTO `products` VALUES (10, 'xKiwi', 'VXL3c2DJWZoKie2KCTSfRUTPiQs7IXYtIwBY4pFoaskpeMMUTOkWsgDARypPTJgk6DbrreSjtDvICHjWIUWmECZDgRl5d0znbvgTto8rruBEBUqi5uniHPHM3MMu4aHYEiwVKy1ZemzRoQwTL8asiEEbJDMTkANToBtN2re6USn3qfXf6CN0SJjLRPEbrL', 981, '11.jpg');
INSERT INTO `products` VALUES (11, 'Strawderry', 'OqS02enyJkKmfjSNaVUrDT6FVL1vfoP4nRHuGuc1IoKNiPQVvB1nF3NrMQvTQjya1NPWa7phMMD7k9b91cQZSDQadMxKnP57cYo6rZDJ5RPIKkupUWbwIzyEyRVRTpZNoTER54nCDHOWm3pylSjT211mVcrjUp3hNk8y8qOBXphzmsyvnfgkjpBZCnxklQ', 975, '12.jpg');
INSERT INTO `products` VALUES (12, 'Kiwi', 'g2hr4s33vroauy8MI0Hp2f5oRnwEfnanwMuweHyIeD22w1wHjhZAtBfBdX4R3j6B5K3K3A0CqdAsvPpLFrJsPemuCmZpJTLIPpqKNDi505TiWjI3YT2jdwxkEaCrp5SCuwKNQRpRJDJc4fBfQS99zXg9D0yr20uPQzTHVXFrKnuau7B7vtirFzNkzCCnen', 142, '13.jpg');
INSERT INTO `products` VALUES (13, 'Rambxtan', 'fIwS8tlgqrZW9XkbH9ZbxuCNjvtWm1yv79uMBhRlT2K9Dgmu6tLdGTyeKLJauXxwox0TTk3QiunAjxa0sU034ejpDoolJ4Lik6f21xdrTHACs3h0rHFPqugArJqLSQ1CFUa1FGirUwIhvUCbJEG8aAeuj0dfdXfbXxkypQ1BcMAcpdWBuuBnfh8A3YouMI', 499, '20.jpg');
INSERT INTO `products` VALUES (14, 'sango', 'Ke731gHEY7u26gyK1gIBwvlt2SvnR5Dbi1thuld9LCXljBPKrKxLm9zSRGzUmxoWypsOsDxqvpHmf73WvU2bbf2J2VF7okczAEvOt1VH1KS05gvs1IeshMaKY5300aorTOsKpEgZdjmKDQShbRV5DlojgU8D7uAQ79qwr7QFk9aQaClR1xkEi79Nk5p4Zi', 412, '15.jpg');
INSERT INTO `products` VALUES (15, 'Pluots', 'DwnuZQmzXDbiI36sqZLCws1uPude12PN4pVmUepAQi6nvYoVWYdIFCngqxXMZmrmG9JUjT857FrE7dDf6mLWkfL6FkI7wyRdforqZ7zAopXZV1lsQJdyQktP8p5NAmcrPeH3gh5AtWP39Ym5cHM3IC2Wh170iE7vp4zFTMw1yaZDc6RzUPcf3rnWltZ7Bo', 724, '16.jpg');
INSERT INTO `products` VALUES (16, 'xrape plus', 'gbHdPmwCRkt7Rs2TZXzoVJWyfcZRUS8BcaV8jM7tUR59g7rjNHagC8uo2APHmqOyBo9dA53ZDzBpVAkJM57K8G7ZanlNSncCC8qhaYEi8Qj4obIwE7OfA7iVBstgpAURLFocGwyzS4hzLQR0sbcV0Li42vliARPNUTtcEHcmJHbEuy2hTAHU78ks2tda5T', 597, '17.jpg');
INSERT INTO `products` VALUES (17, 'Pluots', 'E7lqvrIPF18wF3CUKI6MU8fOMxKIRCH7aa68WTkYWBrhH11gS1Kl6RDb4QnSrNP1TRtKCpCWPtsTWfGAAudKX9J5AhtlxKqHF0zD6SJa13TyacE2AGgKyXNCwoctsqC6xSWlmKTABOova8qwnUCc0RIRTcIXzQkN81tCZ5B8l9IRSfNBpONGUGW7cgnYma', 512, '18.jpg');
INSERT INTO `products` VALUES (18, 'Grape se', '3KLP4ttocEXEN7UK6CLK65ZD1Mi48x3DCMW3rwqFxEh9fIklUzI1i4SuIgY0fcrizb0l6Kj924PZU7piOvahRFfpJFQx1Wb2hOb0L4DHORqm5sgx9tmeBzLazeoQ5x59Kk5jr1yPnL8CphKp1vk4cavvOpt5jSW3C1zJ7Neih5RjI6rRQ53wrErdb83BTU', 880, '20.jpg');
INSERT INTO `products` VALUES (19, 'Grape pro', 'lXHehWNFhsZjxJGP3dbf9dfPBAMf034N4VBhSMQbhOW4UvSGxpygl28qUupi9aQ3cwf43TIaTt8HN4n9keZbFwhojNuUDm2p9Wcv74BnN9yR2WQZFM3aVJuAWTiDYiG7DVoq0Yyuh6lmj6mhxg8KGOOeETfOuWLF2aZq85g7A0d0gFmdrCZAjcmeG9TmYs', 43, 'pngwing.com (2).png');
INSERT INTO `products` VALUES (20, 'ambi-Raspberry', '97eD0WAvqfiiEnXMl22bNikB47qPemvWl3cWMhuM3iYGRCN4HBBSbWOaHORzk7BFp6OrS2WcLlh2GmW8Qqw46pjJhbdplypjP9BDpyuogiMVeDKMG9xjEINqZ8gZNLVsk4Kc4JoFiX9KiqPlAPqBQSMAWkUXgD5guxl0DnntKnNSIcxbfuKDfvGY7Qo8Ni', 544, 'pngwing.com (1).png');
INSERT INTO `products` VALUES (21, 'Raspberry', '1oXsK4u2eL3jRNq5k6z9e6LzLpcSFOb3TzAvrFoLU5qJRPbIHYIIxDEB31laCm7pz98Ffb0B70VEIKiJ1VOwCaO26Qo20ci39w9ROfW1KBx9KzKhutqJ7karaKeiHbAjuolcoHTB3m5yosAOrdSbWeJzeJsKJyjX83BhM7PNEvoonr3Pd7Mhtip9ZbIHLs', 39, 'pngwing.png');
INSERT INTO `products` VALUES (22, 'Cherry', '0RY3KpTuPmCzjI2XeWzrtV95zlMtPnz5pbyYU7uAN2lpyPuMEb2nA5r35Y6mf4ML5aICOwTWxPt0Qmcshx6K8PUGC6M7g1Mn6RIHjBpDR0AaDmgdiEPgXMDGRkG90cQ1ks4rQ278Y4Ujdtw2BxKtdiiE4RcQ2gaowfpzAQrzVTHJFww7g6ElS8uLG4TxQB', 493, 'Orders.png');
INSERT INTO `products` VALUES (23, 'Grape', 'MipMfAmF9Abbo6muzcIBGchjWg6zeEXvWN3jC4xKm11Ajbq9fQrIXPwTgMn4BYpomLtKN8PoXMrwgPHndfGNre1oEbWGBzXVSrMOr0B6k9MoT1gEePW1EHK4Qg5PqXOOnF4PDHtpiFutkWWxaG0kWAwDhNZDLM3I2KcL9WfCGyEPZKvdEOAhzghWkTmwOw', 208, 'Cammera5.png');
INSERT INTO `products` VALUES (24, 'Orange', '72ThkvD4hhfeauHrx4nhW4aIqhyigBLS5RRbVnykPiNfPGvdZWXbglquKpRXDzFuPmAUTqIXMkviF0S6Yl0T57QPrmzJQXvxEiCstunmqMJORRlVNasidAV3xKSG1zRJ0zcpJq0oQ7sTKByR2IVZZbhKTTdZ6joUxYJV3kSjghHOJa5yKbqcwqIB4jR3e7', 713, 'Cammera5.png');
INSERT INTO `products` VALUES (25, 'Raspberry', 'p7HMsYqOM6tzIfsp7dDiuQIKDAB6wjfRzXOVRTKAKJB84o9IWrDJyDdrDDsGZB29LoIMgUcVODyMXj0mILdtyhkE0gyqMKC66FuPon3KLAYb3sjMvzDEwWkMZkvMBa1IPBUtafuYrfoFmQ3s6Ne4jrTDuNi59BGwrDRFXPKcyX2yRVGtu5VFbR7THpyPSW', 378, 'Cammera5.png');
INSERT INTO `products` VALUES (26, 'Kiwi', 'idMBeHYWDbE8kz5kPpZBCZTNIB251OsXh78vW3RWxirMdtam8Sd7kJIc1oENoV9znsaUpZiNJdHY8PWDTK0TNuS3b1hWOSnPvJsQQHniFTvA0ZGqdPAV93d9lqA3wtBebHUqiaq27ExMUfsqoXuwaxPn68LskWjewOy42EOCW9G2LJ4EMJr1ZWyhrJWt1M', 567, 'Cammera5.png');
INSERT INTO `products` VALUES (27, 'Aiple', 'qmVtchASoAMSyirwRoN9aVmF3J36gFk4TNXV4GdzJ68aSKYJifp1WIoHLqKs1qZvyceonJ9waQlCi7FjEq2SfAPKr3zp4xvnYXvosRxXMXheRxvV2VwYHfVSfNc5PZ9AxzFwmSV20QdW4Jux1dw3ITfYrD3a8PxfKh8aS1rMRt0NnRifK1jkhtbKuYf9Mk', 443, 'Cammera5.png');
INSERT INTO `products` VALUES (28, 'Cserry elite', 'YlEro44rC1NxY91iLaxj8u7cVeyMqfPEZt2lLSdtzPeOfaNr5V0B9t3ZbR0rfisUBE3YUYs6eZwQ29QkQICBYSXwQ8dlf8QBAVDxerbLR953bL09YZivSAwXP8fqdbPr8PfUcMiBrkxsHiTQCRkrt5WIFGPyjOlpFmD8DmhULMjV7xOD6M5wJUjfZXmhUz', 405, 'Cammera5.png');
INSERT INTO `products` VALUES (29, 'Pluots', 'lzEvcgKR6HN3ThFPYxGVjgtJxgfJq94DZNbrHOjVzj2o2RNqWXJiQRXUFrGTrvUFhfov8A4QF0kTQKS5zNQSBGpNTXoF12OPUiMRskt1vdxxFjhyS1vznj2dyfnx744eNo87779VzD6l2h1HgDnH8o8rcliMWX9OnfvosCiV5lxBofbf4QRzCzcSIpSesd', 371, 'Cammera5.png');
INSERT INTO `products` VALUES (30, 'Sirawberry air', 'ZLj8ffxJtZ7c2dW15rEvoqPuZpsHYZlgG60YuErtCM8cihTaPCj75hbL9WMQhnUnPQrEy9cT5IDats6fFpBz97L5sG49ydtIuNB85xrJFTuTKVxNhR7KVYXSZtp7LBvJ6BAgIubj0T2VVpleOGvzitmX6XvDfsOUg4CTt7YTbFbmIDdBp3dA7otwa4JZUY', 353, 'Cammera5.png');
INSERT INTO `products` VALUES (31, 'testin', '', 23, 'Cammera5.png');
INSERT INTO `products` VALUES (32, 'testing', 'descripton', 230, 'Cammera5.png');
INSERT INTO `products` VALUES (35, 'Rahpberry', 'DFYtrA4DCDpKr2FCVcmKeUuEEi7NFNxGQpVhPU5GHwfQj88EVl10uqc6Id0ZFWatX3deRAp3pD3VqNwg28Ij2NA4A6pYWJmYl8bPNFkps6cMG7F5EKaqXvUNQ0SgtDe6J8YukkgiNSSXnZkkpGx6yWTYZK3lRYFzjDUjoAoCmIMRZobgjnwIEssyRqKi5T', 174, 'Cammera5.png');
INSERT INTO `products` VALUES (36, 'Rahpberry', 'DFYtrA4DCDpKr2FCVcmKeUuEEi7NFNxGQpVhPU5GHwfQj88EVl10uqc6Id0ZFWatX3deRAp3pD3VqNwg28Ij2NA4A6pYWJmYl8bPNFkps6cMG7F5EKaqXvUNQ0SgtDe6J8YukkgiNSSXnZkkpGx6yWTYZK3lRYFzjDUjoAoCmIMRZobgjnwIEssyRqKi5T', 174, 'Cammera5.png');

SET FOREIGN_KEY_CHECKS = 1;
