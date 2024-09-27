# Mundo Pirata - Base de Datos

Este repositorio contiene una base de datos MySQL que modela el universo de **One Piece**, incluyendo información sobre piratas, marinos, reinos, islas, tripulaciones, batallas y frutas del diablo. La base de datos está diseñada para realizar consultas sobre estos elementos y explorar las relaciones entre ellos.

## Tabla de Contenidos

1. [Esquema Entidad-Relacional](#esquema-entidad-relacional)
    1. [Entidades Princiaples](#entidades-principales)
    2. [Tablas Intermedias](#tablas-intermedias)
2. [Estructura del Proyecto](#estructura-del-proyecto)
    1. [Ingenieria Inversa](#ingenieria-inversa)
    2. [Relaciones](#relaciones)
3. [Consultas](#consultas)
4. [Instalación](#instalación)
5. [Autor](#autor)


## Esquema Entidad-Relacional

El esquema entidad-relacional (ER) de la base de datos de **One Piece** está compuesto por varias entidades y sus relaciones, representando los elementos clave del universo de **One Piece**.

![EsquemaE-R](<ERDDiagramOnePiece.jpg>)

## Entidades Principales

Las entidades principales en total son 11, son los siguientes:

### 1. **Piratas**
- **Descripción**: Esta entidad representa a los piratas individuales que navegan en el mundo de **One Piece**. Cada pirata tiene características únicas, como su recompensa y su fecha de nacimiento, así como la tripulación a la que pertenece.

![Piratas](<Piratas.png>)

### 2. **Marinos**
- **Descripción**: Modela a los marinos, quienes son parte de la organización marina. Incluye información sobre su rango y división, lo que determina su nivel de autoridad y responsabilidad.

![Marinos](<Marinos.png>)

### 3. **Tripulaciones**
- **Descripción**: Representa las diversas tripulaciones en el mundo de **One Piece**, cada una con un nombre único y un número de miembros. Es fundamental para agrupar a los piratas que navegan juntos.

![Tripulaciones](<Tripulaciones.png>)

### 4. **Reinos**
- **Descripción**: Modela los diferentes reinos en el mundo, incluyendo el nombre del reino y el monarca que lo gobierna. Esto es clave para entender el contexto político y geográfico del universo de **One Piece**.

![Reinos](<Reinos.png>)

### 5. **Armamentos**
- **Descripción**: Representa las armas y armamentos que utilizan tanto piratas como marinos. Cada armamento tiene un tipo, cantidad y descripción que detalla sus características.

![Armamentos](<Armamentos.png>)

### 6. **Batallas**
- **Descripción**: Modela las diversas batallas que ocurren en el mundo de **One Piece**, incluyendo el nombre de la batalla, la fecha y su resultado. Esto es importante para documentar los conflictos en la historia.

![Batallas](<Batallas.png>)

### 7. **Frutas del Diablo**
- **Descripción**: Representa las Frutas del Diablo, que otorgan poderes especiales a quienes las consumen. Cada fruta tiene un nombre, tipo, poder y descripción que detalla sus efectos.

![FrutasDiablo](<FrutasDiablo.png>)

### 8. **Islas**
- **Descripción**: Modela las islas que forman parte del mundo de **One Piece**. Cada isla tiene un nombre, región, tipo y puede estar vinculada a un reino.

![Islas](<Islas.png>)

### 9. **Navios**
- **Descripción**: Representa los barcos utilizados por las tripulaciones. Incluye información sobre el nombre del navío, su capacidad, tipo y el tamaño.

![Navios](<Navios.png>)

### 10. **Division Marinos**
- **Descripción**: Modela las divisiones dentro de la organización marina, indicando su nombre y funciones específicas. Esto ayuda a categorizar a los marinos según su rol.

![DivisionMarinos](<DivisionMarinos.png>)

### 11. **Rango Marinos**
- **Descripción**: Representa los rangos dentro de la marina, definiendo el nivel y responsabilidades de los marinos. Cada rango tiene un nombre y una descripción que explica sus atribuciones.

![RangosMarinos](<RangoMarinos.png>)

## Tablas Intermedias
### 1. **Marinos_Armamentos**
- **Descripción**: Esta tabla relaciona a los marinos con los armamentos que poseen. Cada registro indica qué armamentos tiene un marinero específico. 

![Marinos_Armamentos](<Marinos_Armamentos.png>)

### 2. **Marinos_Batallas**
- **Descripción**: Relación entre los marinos y las batallas en las que han participado. Permite registrar las batallas en las que estuvo involucrado cada marinero.

![Marinos_Batallas](<Marinos_Batallas.png)

### 3. **Marinos_Frutas**
- **Descripción**: Relación entre los marinos y las Frutas del Diablo que han consumido. Esto es fundamental para entender las habilidades especiales de cada marinero.

![Marinos_Frutas](<Marinos_Frutas.png>)

### 4. **Marinos_Islas**
- **Descripción**: Esta tabla conecta a los marinos con las islas en las que están presentes o han realizado actividades.

![Marinos_Islas](<Marinos_Islas.png>)

### 5. **Marinos_Reinos**
- **Descripción**: Relación que vincula a los marinos con los reinos. Permite identificar en qué reinos tienen influencia o han estado activos.

![Marinos_Reinos](<Marinos_Reinos.png>)

### 6. **Piratas_Armamentos**
- **Descripción**: Tabla que relaciona a los piratas con los armamentos que poseen, esencial para entender su capacidad de combate.

![Piratas_Armamentos](<Piratas_Armamentos.png>)

### 7. **Piratas_Batallas**
- **Descripción**: Relación entre los piratas y las batallas en las que han participado, proporcionando un registro de sus enfrentamientos.

![Piratas_Batallas](<Piratas_Batallas.png>)

### 8. **Piratas_Frutas**
- **Descripción**: Esta tabla conecta a los piratas con las Frutas del Diablo que han consumido, lo que les otorga habilidades especiales.

![Piratas_Frutas](<Piratas_Frutas.png>)

### 9. **Piratas_Islas**
- **Descripción**: Relación entre los piratas y las islas en las que se han avistado o han realizado actividades.

![Piratas_Islas](<Piratas_Islas.png>)

### 10. **Piratas_Reinos**
- **Descripción**: Conexión entre los piratas y los reinos, permitiendo identificar su influencia en distintas áreas del mundo.

![Piratas_Reinos](<Piratas_Reinos.png>)

### 11. **Tripulaciones_Batallas**
- **Descripción**: Esta tabla relaciona las tripulaciones con las batallas en las que han estado involucradas.

![Tripulaciones_Batallas](<Tripulaciones_Batallas.png>)

### 12. **Tripulaciones_Islas**
- **Descripción**: Relación entre las tripulaciones y las islas donde están presentes o han tenido actividad.

![Tripulaciones_Islas](<Tripulaciones_Islas.png>)

### 13. **Tripulaciones_Reinos**
- **Descripción**: Conexión que vincula las tripulaciones con los reinos, identificando los reinos con los que han tenido interacción.

![Tripulaciones_Reinos](<Tripulaciones_Reinos.png>)

## Estructura del Proyecto

### Ingenieria Inversa

La estructura del proyecto fue diseñada utilizando la ingeniería inversa en MySQL Workbench, lo que permitió obtener un esquema visual y detallado de las tablas y sus relaciones. A continuación, se presenta una descripción de las tablas principales y sus interconexiones.

![Ingenieria Inversa](<Ingenieria Inversa.png>)

### Relaciones

En la base de datos de **One Piece**, se han definido varias relaciones de uno a muchos y de muchos a muchos. A continuación se detallan las relaciones específicas:

#### Relaciones de Uno a Muchos

1. **Tripulaciones ↔ Piratas**:
   - **Descripción**: Cada tripulación puede tener múltiples piratas asociados, pero cada pirata pertenece a una única tripulación.
   - **Relación**: (1:N)

2. **Tripulaciones ↔ Navios**:
   - **Descripción**: Cada tripulación puede tener múltiples navíos, pero cada navío pertenece a una única tripulación.
   - **Relación**: (1:N)

3. **División_Marinos ↔ Marinos**:
   - **Descripción**: Cada división puede incluir múltiples marinos, pero cada marinero pertenece a una única división.
   - **Relación**: (1:N)

4. **Rango_Marinos ↔ Marinos**:
   - **Descripción**: Cada rango puede ser asignado a múltiples marinos, pero cada marinero tiene un solo rango.
   - **Relación**: (1:N)

5. **Reinos ↔ Islas**:
   - **Descripción**: Un reino puede tener varias islas bajo su dominio, pero cada isla pertenece a un único reino.
   - **Relación**: (1:N)

6. **Islas ↔ Batallas**:
   - **Descripción**: Cada batalla puede ocurrir en una sola isla, pero una isla puede ser el escenario de múltiples batallas.
   - **Relación**: (1:N)

7. **Reinos ↔ Batallas**:
   - **Descripción**: Un reino puede estar involucrado en múltiples batallas, pero cada batalla puede estar asociada a un único reino.
   - **Relación**: (1:N)

#### Relaciones de Muchos a Muchos

1. **Piratas ↔ Islas**:
   - **Descripción**: Un pirata puede haber visitado múltiples islas, y cada isla puede ser visitada por múltiples piratas.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Piratas_Islas`

2. **Tripulaciones ↔ Batallas**:
   - **Descripción**: Una tripulación puede participar en múltiples batallas, y cada batalla puede involucrar a múltiples tripulaciones.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Tripulaciones_Batallas`

3. **Tripulaciones ↔ Islas**:
   - **Descripción**: Una tripulación puede visitar múltiples islas, y cada isla puede ser visitada por múltiples tripulaciones.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Tripulaciones_Islas`

4. **Tripulaciones ↔ Reinos**:
   - **Descripción**: Una tripulación puede operar en varios reinos, y un reino puede ser operado por varias tripulaciones.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Tripulaciones_Reinos`

5. **Piratas ↔ Reinos**:
   - **Descripción**: Un pirata puede haber visitado múltiples reinos, y cada reino puede ser visitado por varios piratas.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Piratas_Reinos`

6. **Piratas ↔ Armamentos**:
   - **Descripción**: Un pirata puede utilizar varios armamentos, y cada armamento puede ser utilizado por múltiples piratas.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Piratas_Armamentos`

7. **Piratas ↔ Frutas del Diablo**:
   - **Descripción**: Un pirata puede consumir múltiples Frutas del Diablo, y cada fruta puede ser consumida por múltiples piratas.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Piratas_Frutas`

8. **Marinos ↔ Islas**:
   - **Descripción**: Un marinero puede visitar múltiples islas, y cada isla puede ser visitada por varios marinos.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Marinos_Islas`

9. **Marinos ↔ Batallas**:
   - **Descripción**: Un marinero puede participar en varias batallas, y cada batalla puede involucrar a múltiples marinos.
   - **Relación**: (N:M)  
   - **Tabla intermedia**: `Marinos_Batallas`

10. **Marinos ↔ Reinos**:
    - **Descripción**: Un marinero puede operar en varios reinos, y un reino puede ser operado por varios marinos.
    - **Relación**: (N:M)  
    - **Tabla intermedia**: `Marinos_Reinos`

11. **Marinos ↔ Armamentos**:
    - **Descripción**: Un marinero puede poseer múltiples armamentos, y cada armamento puede ser poseído por múltiples marinos.
    - **Relación**: (N:M)  
    - **Tabla intermedia**: `Marinos_Armamentos`

12. **Marinos ↔ Frutas del Diablo**:
    - **Descripción**: Un marinero puede consumir varias Frutas del Diablo, y cada fruta puede ser consumida por múltiples marinos.
    - **Relación**: (N:M)  
    - **Tabla intermedia**: `Marinos_Frutas`

13. **Piratas ↔ Batallas**:
    - **Descripción**: Un pirata puede participar en múltiples batallas, y cada batalla puede involucrar a múltiples piratas.
    - **Relación**: (N:M)  
    - **Tabla intermedia**: `Piratas_Batallas`

## Consultas

Este proyecto contiene 40 consultas SQL que interactúan con una base de datos ficticia de piratas, marinos y reinos. A continuación se presentan las consultas junto con una breve descripción y una captura de pantalla con los resultados de la ejecución de cada consulta.

## Consultas y Resultados

### 1. Obtener el nombre y el monarca de todos los reinos
```sql
-- Obtener el nombre y el monarca de todos los reinos
SELECT Nombre, Monarca FROM Reinos;


## Instalación

Descargar el código: Clona el repositorio desde el enlace proporcionado en GitHub usando el comando git clone <https://github.com/MichelAdrianTorradoRoa/One-Piece.git>.

Abrir en un cliente MySQL: Abre el archivo SQL del esquema y ejecútalo en un cliente MySQL como phpMyAdmin o MySQL Workbench para crear la base de datos y las tablas.

Cargar datos: Utiliza los scripts de inserciones para cargar datos iniciales en las tablas.

Ejecutar consultas: Utiliza las consultas proporcionadas para interactuar con la base de datos y extraer información útil.

## Capturas de Pantalla

Aquí se muestran capturas de pantalla de la aplicación:

- **Encabezado y Main**:

    ![Encabezado y Main](<encabezado-main.png>)

- **Filtros y Resultados**:

    ![Filtros y Resultados](<filtros.png>)

## Autor

Hecho por [@MichelAdrianTorradoRoa](https://github.com/MichelAdrianTorradoRoa)

```sql
SELECT Nombre, Recompensa FROM Piratas
WHERE Recompensa > 100000;
```