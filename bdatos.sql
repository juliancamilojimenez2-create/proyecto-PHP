CREATE DATABASE IF NOT EXISTS Gucci;

USE Gucci;

CREATE TABLE IF NOT EXISTS t_usuarios (
    id_usuario INT(11) AUTO_INCREMENT NOT NULL,
    nombre     VARCHAR(100) NOT NULL,
    apellido   VARCHAR(100) NOT NULL,
    email      VARCHAR(200) NOT NULL,
    password   VARCHAR(200) NOT NULL,
    rol        VARCHAR(20)  NOT NULL,
    imagen     VARCHAR(200) DEFAULT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY(id_usuario),
    CONSTRAINT uq_email UNIQUE(email)
) ENGINE=InnoDB;


VALUES (NULL,'Camilo','Jimenez','camilojimenez16@gmail.com','123456','admin','imagen.jpg');

CREATE TABLE IF NOT EXISTS t_categorias(
    id_categoria        int(11) auto_increment  NOT NULL,
    nombre_categoria    varchar(100)            NOT NULL,
    CONSTRAINT pk_categoria     PRIMARY KEY(id_categoria)
)ENGINE=InnoDb;


INSERT INTO t_usuarios VALUE(NULL,'construccion'),(NULL,'electricos'),(NULL,'pinturas'),(NULL,'pisos');





CREATE TABLE IF NOT EXISTS t_productos(
    id_producto         int(11)   auto_increment  NOT NULL,
    nombre_producto     varchar(100)    NOT NULL,
    descripcion         varchar(200)    NOT NULL,
    stok                int(100)        NOT NULL,
    precio              float(10)       NOT NULL,
    imagen              varchar(255)    NOT NULL,
    oferta              varchar(200)    NOT NULL,
    fecha               date            NOT NULL,
    id_categoria        int(11)         NOT NULL,
    CONSTRAINT     pk_producto              PRIMARY KEY(id_producto),
    CONSTRAINT     fk_producto_categoria    FOREIGN KEY(id_categoria)   REFERENCES t_categorias(id_categoria)
)ENGINE=InnoDb;
