CREATE TABLE Piratas(
    Id_Pirata INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Recompensa INT NOT NULL,
    Fecha_de_Nacimiento DATE NOT NULL,

)

CREATE TABLE Rango_Pirata(
    Id_RangoP INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion VARCHAR(255)
)

CREATE TABLE Tripulaciones(
    Id_Tripulacion INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Navios(
    Id_Navio INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Gobierno_Mundial(
    Id_Gobierno INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Islas(
    Id_Isla INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Marinos(
    Id_Marino INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Rango_Marinos(
    Id_RangoM INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Division_Marinos(
    Id_Division INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Reinos(
    Id_Reino INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Frutas_del_Diablo(
    Id_FrutaDiablo INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Armamentos(
    Id_Armamento INT NOT NULL PRIMARY KEY,
)

CREATE TABLE Batallas(
    Id_Batalla INT NOT NULL PRIMARY KEY,
)

CREATE TABLE


