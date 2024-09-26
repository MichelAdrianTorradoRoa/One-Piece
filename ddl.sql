
CREATE TABLE Gobierno_Mundial (
    Id_Gobierno INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Rango VARCHAR(255) NOT NULL,
    Influencia VARCHAR(255) NOT NULL
);

CREATE TABLE Rango_Marinos (
    Id_RangoM INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion VARCHAR(255) NOT NULL
);

CREATE TABLE Division_Marinos (
    Id_Division INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL UNIQUE,
    Descripcion VARCHAR(255) NOT NULL
);

CREATE TABLE Frutas_del_Diablo (
    Id_FrutaDiablo INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL UNIQUE,
    Tipo VARCHAR(255) NOT NULL,
    Poder VARCHAR(255) NOT NULL UNIQUE,
    Descripcion VARCHAR(255) NOT NULL
);

CREATE TABLE Armamentos (
    Id_Armamento INT NOT NULL PRIMARY KEY,
    Tipo VARCHAR(255) NOT NULL,
    Cantidad INT NOT NULL,
    Descripcion VARCHAR(255) NOT NULL
);


CREATE TABLE Tripulaciones (
    Id_Tripulacion INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL UNIQUE,
    Numero INT NOT NULL
);

CREATE TABLE Piratas (
    Id_Pirata INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Recompensa INT NOT NULL,
    Fecha_de_Nacimiento DATE NOT NULL,
    Id_Tripulacion INT,
    FOREIGN KEY (Id_Tripulacion) REFERENCES Tripulaciones (Id_Tripulacion) ON DELETE CASCADE
);

CREATE TABLE Reinos (
    Id_Reino INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL UNIQUE,
    Monarca VARCHAR(255) NOT NULL UNIQUE,
    Id_Gobierno INT,
    FOREIGN KEY(Id_Gobierno) REFERENCES Gobierno_Mundial (Id_Gobierno) ON DELETE CASCADE
);

CREATE TABLE Navios (
    Id_Navio INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Capacidad INT NOT NULL,
    Tipo VARCHAR(255),
    Tamaño VARCHAR(255),
    Id_Tripulacion INT,
    FOREIGN KEY (Id_Tripulacion) REFERENCES Tripulaciones(Id_Tripulacion) ON DELETE CASCADE
);

CREATE TABLE Islas (
    Id_Isla INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL UNIQUE,
    Region VARCHAR(255) NOT NULL,
    Tipo VARCHAR(255) NOT NULL,
    Id_Reino INT,
    FOREIGN KEY (Id_Reino) REFERENCES Reinos(Id_Reino) ON DELETE CASCADE
);

CREATE TABLE Marinos (
    Id_Marino INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Id_Division INT,
    Id_RangoM INT,
    Id_Gobierno INT,
    FOREIGN KEY (Id_Division) REFERENCES Division_Marinos(Id_Division) ON DELETE CASCADE,
    FOREIGN KEY (Id_RangoM) REFERENCES Rango_Marinos(Id_RangoM) ON DELETE CASCADE,
    FOREIGN KEY (Id_Gobierno) REFERENCES Gobierno_Mundial(Id_Gobierno) ON DELETE CASCADE
);

CREATE TABLE Batallas (
    Id_Batalla INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL UNIQUE,
    Fecha DATE NOT NULL,
    Resultado VARCHAR(255) NOT NULL,
    Id_Isla INT,
    Id_Reino INT,
    FOREIGN KEY (Id_Isla) REFERENCES Islas(Id_Isla) ON DELETE CASCADE,
    FOREIGN KEY (Id_Reino) REFERENCES Reinos(Id_Reino) ON DELETE CASCADE
);


CREATE TABLE Tripulaciones_Islas(
    Id_Tripulacion INT,
    Id_Isla INT,
    PRIMARY KEY (Id_Tripulacion, Id_Isla),
    FOREIGN KEY (Id_Tripulacion) REFERENCES Tripulaciones(Id_Tripulacion) ON DELETE CASCADE,
    FOREIGN KEY (Id_Isla) REFERENCES Islas(Id_Isla) ON DELETE CASCADE
);

CREATE TABLE Piratas_Islas(
    Id_Pirata INT,
    Id_Isla INT,
    PRIMARY KEY (Id_Pirata, Id_Isla),
    FOREIGN KEY (Id_Pirata) REFERENCES Piratas(Id_Pirata) ON DELETE CASCADE,
    FOREIGN KEY (Id_Isla) REFERENCES Islas(Id_Isla) ON DELETE CASCADE
);

CREATE TABLE Tripulaciones_Batallas(
    Id_Tripulacion INT,
    Id_Batalla INT,
    PRIMARY KEY (Id_Tripulacion, Id_Batalla),
    FOREIGN KEY (Id_Tripulacion) REFERENCES Tripulaciones(Id_Tripulacion) ON DELETE CASCADE,
    FOREIGN KEY (Id_Batalla) REFERENCES Batallas(Id_Batalla) ON DELETE CASCADE
);

CREATE TABLE Tripulaciones_Reinos(
    Id_Tripulacion INT,
    Id_Reino INT,
    PRIMARY KEY (Id_Tripulacion, Id_Reino),
    FOREIGN KEY (Id_Tripulacion) REFERENCES Tripulaciones(Id_Tripulacion) ON DELETE CASCADE,
    FOREIGN KEY (Id_Reino) REFERENCES Reinos(Id_Reino) ON DELETE CASCADE
);

CREATE TABLE Piratas_Reinos(
    Id_Pirata INT,
    Id_Reino INT,
    PRIMARY KEY (Id_Pirata, Id_Reino),
    FOREIGN KEY (Id_Pirata) REFERENCES Piratas(Id_Pirata) ON DELETE CASCADE,
    FOREIGN KEY (Id_Reino) REFERENCES Reinos(Id_Reino) ON DELETE CASCADE
);

CREATE TABLE Piratas_Armamentos(
    Id_Pirata INT,
    Id_Armamento INT,
    PRIMARY KEY (Id_Pirata, Id_Armamento),
    FOREIGN KEY (Id_Pirata) REFERENCES Piratas(Id_Pirata) ON DELETE CASCADE,
    FOREIGN KEY (Id_Armamento) REFERENCES Armamentos(Id_Armamento) ON DELETE CASCADE
);

CREATE TABLE Piratas_Frutas(
    Id_Pirata INT,
    Id_FrutaDiablo INT,
    PRIMARY KEY (Id_Pirata, Id_FrutaDiablo),
    FOREIGN KEY (Id_Pirata) REFERENCES Piratas(Id_Pirata) ON DELETE CASCADE,
    FOREIGN KEY (Id_FrutaDiablo) REFERENCES Frutas_del_Diablo(Id_FrutaDiablo) ON DELETE CASCADE
);

CREATE TABLE Marinos_Islas(
    Id_Marino INT,
    Id_Isla INT,
    PRIMARY KEY (Id_Marino, Id_Isla),
    FOREIGN KEY (Id_Marino) REFERENCES Marinos(Id_Marino) ON DELETE CASCADE,
    FOREIGN KEY (Id_Isla) REFERENCES Islas(Id_Isla) ON DELETE CASCADE
);

CREATE TABLE Marinos_Frutas(
    Id_Marino INT,
    Id_FrutaDiablo INT,
    PRIMARY KEY (Id_Marino, Id_FrutaDiablo),
    FOREIGN KEY (Id_Marino) REFERENCES Marinos(Id_Marino) ON DELETE CASCADE,
    FOREIGN KEY (Id_FrutaDiablo) REFERENCES Frutas_del_Diablo(Id_FrutaDiablo) ON DELETE CASCADE
);

CREATE TABLE Marinos_Armamentos(
    Id_Marino INT,
    Id_Armamento INT,
    PRIMARY KEY (Id_Marino, Id_Armamento),
    FOREIGN KEY (Id_Marino) REFERENCES Marinos(Id_Marino) ON DELETE CASCADE,
    FOREIGN KEY (Id_Armamento) REFERENCES Armamentos(Id_Armamento) ON DELETE CASCADE
);

CREATE TABLE Marinos_Batallas(
    Id_Marino INT,
    Id_Batalla INT,
    PRIMARY KEY (Id_Marino, Id_Batalla),
    FOREIGN KEY (Id_Marino) REFERENCES Marinos(Id_Marino) ON DELETE CASCADE,
    FOREIGN KEY (Id_Batalla) REFERENCES Batallas(Id_Batalla) ON DELETE CASCADE
);

CREATE TABLE Marinos_Reinos(
    Id_Marino INT,
    Id_Reino INT,
    PRIMARY KEY (Id_Marino, Id_Reino),
    FOREIGN KEY (Id_Marino) REFERENCES Marinos(Id_Marino) ON DELETE CASCADE,
    FOREIGN KEY (Id_Reino) REFERENCES Reinos(Id_Reino) ON DELETE CASCADE
);

CREATE TABLE Piratas_Batallas(
    Id_Pirata INT,
    Id_Batalla INT,
    PRIMARY KEY (Id_Pirata, Id_Batalla),
    FOREIGN KEY (Id_Pirata) REFERENCES Piratas(Id_Pirata) ON DELETE CASCADE,
    FOREIGN KEY (Id_Batalla) REFERENCES Batallas(Id_Batalla) ON DELETE CASCADE
);