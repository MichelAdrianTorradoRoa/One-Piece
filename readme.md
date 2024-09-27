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

![Marinos_Batallas](<Marinos_Batallas.png>)

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

Descripción: Esta consulta devuelve los nombres de todos los reinos junto con el nombre de sus monarcas.

```sql
-- 1. Obtener el nombre y el monarca de todos los reinos
SELECT Nombre, Monarca FROM Reinos;
```
![1](<1.png>)

### 2. Obtener el nombre y la recompensa de todos los piratas
Descripción: Esta consulta devuelve los nombres de todos los piratas y la cantidad de recompensa por su captura.

```sql
-- 2. Obtener el nombre y la recompensa de todos los piratas
SELECT Nombre, Recompensa FROM Piratas;
```
![2](<2.png>)

### 3. Obtener el nombre de los marinos y su rango
Descripción: Esta consulta muestra el nombre de los marinos junto con su rango correspondiente.

```sql
-- 3. Obtener el nombre de los marinos y su rango
SELECT M.Nombre AS Marino, R.Nombre AS Rango
FROM Marinos M
JOIN Rango_Marinos R ON M.Id_RangoM = R.Id_RangoM;
```
![3](<3.png>)

### 4. Obtener el nombre y la descripción de las divisiones de marinos
Descripción: Esta consulta obtiene el nombre y la descripción de todas las divisiones de marinos.

```sql
-- 4. Obtener el nombre y la descripción de las divisiones de marinos
SELECT Nombre, Descripcion FROM Division_Marinos;
```
![4](<4.png>)

### 5. Obtener el nombre, tipo y poder de las frutas del diablo
Descripción: Esta consulta selecciona el nombre, tipo y poder de las frutas del diablo disponibles.

```sql
-- 5. Obtener el nombre, tipo y poder de las frutas del diablo
SELECT Nombre, Tipo, Poder FROM Frutas_del_Diablo;
```
![5](<5.png>)

### 6. Obtener la tripulación de Monkey D. Luffy
Descripción: Esta consulta obtiene los nombres de los miembros de la tripulación de Monkey D. Luffy.

```sql
-- 6. Obtener la tripulación de Monkey D. Luffy
SELECT T.Nombre AS Tripulacion
FROM Tripulaciones T
JOIN Piratas P ON T.Id_Tripulacion = P.Id_Tripulacion
WHERE P.Nombre = 'Monkey D. Luffy';
```
![6](<6.png>)

### 7. Obtener el nombre de los marinos y las batallas en las que participaron
Descripción: Esta consulta muestra el nombre de los marinos junto con las batallas en las que participaron.

```sql
-- 7. Obtener el nombre de los marinos y las batallas en las que participaron
SELECT M.Nombre AS Marino, B.Nombre AS Batalla
FROM Marinos M
JOIN Marinos_Batallas MB ON M.Id_Marino = MB.Id_Marino
JOIN Batallas B ON MB.Id_Batalla = B.Id_Batalla;
```
![7](<7.png>)

### 8. Obtener los piratas y los reinos que estuvieron
Descripción: Esta consulta muestra los piratas junto con los reinos en los que estuvieron.

```sql
-- 8. Obtener los piratas y los reinos que estuvieron
SELECT R.Nombre AS Reino, P.Nombre AS Pirata
FROM Reinos R
JOIN Piratas_Reinos PR ON R.Id_Reino = PR.Id_Reino
JOIN Piratas P ON PR.Id_Pirata = P.Id_Pirata;
```
![8](<8.png>)

### 9. Contar la cantidad de piratas que estuvieron en cada reino
Descripción: Esta consulta cuenta cuántos piratas han estado en cada reino.

```sql
-- 9. Contar la cantidad de piratas que estuvieron en cada reino
SELECT R.Nombre AS Reino, COUNT(P.Id_Pirata) AS Cantidad_Piratas
FROM Reinos R
LEFT JOIN Piratas_Reinos PR ON R.Id_Reino = PR.Id_Reino
LEFT JOIN Piratas P ON PR.Id_Pirata = P.Id_Pirata
GROUP BY R.Nombre;
```
![9](<9.png>)

### 10. Contar la cantidad de marinos por rango
Descripción: Esta consulta cuenta la cantidad de marinos en cada rango.

```sql
-- 10. Contar la cantidad de marinos por rango
SELECT R.Nombre AS Rango, COUNT(M.Id_Marino) AS Cantidad_Marinos
FROM Rango_Marinos R
LEFT JOIN Marinos M ON R.Id_RangoM = M.Id_RangoM
GROUP BY R.Nombre;
```
![10](<10.png>)

### 11. Contar la cantidad de batallas en cada isla
Descripción: Esta consulta cuenta la cantidad de batallas que han ocurrido en cada isla.

```sql
-- 11. Contar la cantidad de batallas en cada isla
SELECT I.Nombre AS Isla, COUNT(B.Id_Batalla) AS Cantidad_Batallas
FROM Islas I
LEFT JOIN Batallas B ON I.Id_Isla = B.Id_Isla
GROUP BY I.Nombre;
```
![11](<11.png>)

### 12. Contar la cantidad total de armamentos por tipo
Descripción: Esta consulta cuenta la cantidad total de armamentos agrupados por tipo.

```sql
-- 12. Contar la cantidad total de armamentos por tipo
SELECT Tipo, SUM(Cantidad) AS Total_Cantidad
FROM Armamentos
GROUP BY Tipo;

```
![12](<12.png>)

### 13. Contar la cantidad total de frutas del diablo por tipo
Descripción: Esta consulta cuenta la cantidad total de frutas del diablo agrupadas por tipo.

```sql
-- 13. Contar la cantidad total de frutas del diablo por tipo
SELECT Tipo, COUNT(*) AS Total
FROM Frutas_del_Diablo
GROUP BY Tipo;
```
![13](<13.png>)

### 14. Obtener los piratas con recompensa mayor a 100,000
Descripción: Esta consulta obtiene los nombres de los piratas cuya recompensa es mayor a 100,000.

```sql
-- 14. Obtener los piratas con recompensa mayor a 100,000
SELECT Nombre, Recompensa FROM Piratas
WHERE Recompensa > 100000;
```
![14](<14.png>)

### 15. Obtener los marinos de la división 'G-1'
Descripción: Esta consulta obtiene los nombres de los marinos que pertenecen a la división 'G-1'.

```sql
-- 15. Obtener los marinos de la división 'G-1'
SELECT M.Nombre AS Marino
FROM Marinos M
JOIN Division_Marinos D ON M.Id_Division = D.Id_Division
WHERE D.Nombre = 'G-1';
```
![15](<15.png>)

### 16. Obtener batallas que ocurrieron en 2020
Descripción: Esta consulta devuelve los nombres y fechas de las batallas que ocurrieron en el año 2020.

```sql
-- 16. Obtener batallas que ocurrieron en 2020
SELECT Nombre, Fecha FROM Batallas
WHERE YEAR(Fecha) = 2020;
```
![16](<16.png>)

### 17. Obtener los piratas que consumieron la fruta 'Mera Mera no Mi'
Descripción: Esta consulta devuelve los nombres de los piratas que han consumido la fruta 'Mera Mera no Mi'.

```sql
-- 17. Obtener los piratas que consumieron la fruta 'Mera Mera no Mi'
SELECT P.Nombre AS Pirata
FROM Piratas P
JOIN Piratas_Frutas PF ON P.Id_Pirata = PF.Id_Pirata
JOIN Frutas_del_Diablo FD ON PF.Id_FrutaDiablo = FD.Id_FrutaDiablo
WHERE FD.Nombre = 'Mera Mera no Mi';
```
![17](<17.png>)

### 18. Obtener los piratas con recompensa menor a 50,000
Descripción: Esta consulta obtiene los nombres de los piratas cuya recompensa es menor a 50,000.

```sql
-- 18. Obtener los piratas con recompensa menor a 50,000
SELECT Nombre, Recompensa FROM Piratas
WHERE Recompensa < 50000;
```
![18](<18.png>)

### 19. Obtener la lista de nombres de piratas y marinos
Descripción: Esta consulta combina y devuelve la lista de nombres de todos los piratas y marinos.

```sql
-- 19. Obtener la lista de nombres de piratas y marinos
SELECT Nombre FROM Piratas
UNION
SELECT Nombre FROM Marinos;
```
![19](<19.png>)

### 20. Obtener la lista de nombres de islas y reinos
Descripción: Esta consulta combina y devuelve la lista de nombres de todas las islas y reinos.
```sql
-- 20. Obtener la lista de nombres de islas y reinos
SELECT Nombre AS Nombre FROM Islas
UNION
SELECT Nombre FROM Reinos;
```
![20](<20.png>)

### 21. Contar total de tripulaciones y marinos
Descripción: Esta consulta cuenta el total de tripulaciones y marinos en la base de datos.

```sql
-- 21. Contar total de tripulaciones y marinos
SELECT 'Tripulaciones' AS Tipo, COUNT(*) AS Total FROM Tripulaciones
UNION ALL
SELECT 'Marinos', COUNT(*) FROM Marinos;
```
![21](<21.png>)

### 22. Obtener piratas, su tripulación y la isla donde se encuentran
Descripción: Esta consulta muestra el nombre de los piratas, su tripulación y la isla en la que se encuentran.

```sql
-- 22. Obtener piratas, su tripulación y la isla donde se encuentran
SELECT P.Nombre AS Pirata, T.Nombre AS Tripulacion, I.Nombre AS Isla
FROM Piratas P
JOIN Tripulaciones T ON P.Id_Tripulacion = T.Id_Tripulacion
JOIN Piratas_Islas PI ON P.Id_Pirata = PI.Id_Pirata
JOIN Islas I ON PI.Id_Isla = I.Id_Isla;
```
![22](<22.png>)

### 23. Obtener batallas y piratas involucrados en victorias de los piratas
Descripción: Esta consulta muestra las batallas y los piratas que participaron en las victorias de los piratas.

```sql
-- 23. Obtener batallas y piratas involucrados en victorias de los piratas
SELECT B.Nombre AS Batalla, P.Nombre AS Pirata
FROM Batallas B
JOIN Piratas_Batallas PB ON B.Id_Batalla = PB.Id_Batalla
JOIN Piratas P ON PB.Id_Pirata = P.Id_Pirata
WHERE B.Resultado = 'Victoria de los Piratas';
```
![23](<23.png>)

### 24. Obtener marinos, islas y batallas en islas específicas
Descripción: Esta consulta muestra los marinos, las islas y las batallas en islas específicas.

```sql
-- 24. Obtener marinos, islas y batallas en islas específicas
SELECT M.Nombre AS Marino, I.Nombre AS Isla, B.Nombre AS Batalla
FROM Marinos M
JOIN Marinos_Batallas MB ON M.Id_Marino = MB.Id_Marino
JOIN Batallas B ON MB.Id_Batalla = B.Id_Batalla
JOIN Islas I ON B.Id_Isla = I.Id_Isla
WHERE I.Nombre IN ('Isla de las Sirenas', 'Alabasta');
```
![24](<24.png>)

### 25. Contar la cantidad de frutas del diablo por pirata
Descripción: Esta consulta cuenta cuántas frutas del diablo posee cada pirata.

```sql
-- 25. Contar la cantidad de frutas del diablo por pirata
SELECT P.Nombre AS Pirata, COUNT(PF.Id_FrutaDiablo) AS Cantidad_Frutas
FROM Piratas P
LEFT JOIN Piratas_Frutas PF ON P.Id_Pirata = PF.Id_Pirata
GROUP BY P.Nombre;
```
![25](<25.png>)

### 26. Contar la cantidad de marinos por división
Descripción: Esta consulta cuenta cuántos marinos hay en cada división.

```sql
-- 26. Contar la cantidad de marinos por división
SELECT D.Nombre AS Division, COUNT(M.Id_Marino) AS Cantidad_Marinos
FROM Division_Marinos D
LEFT JOIN Marinos M ON D.Id_Division = M.Id_Division
GROUP BY D.Nombre;
```
![26](<26.png>)

### 27. Obtener piratas ordenados por recompensa de mayor a menor
Descripción: Esta consulta devuelve los nombres de los piratas ordenados por su recompensa de mayor a menor.

```sql
-- 27. Obtener piratas ordenados por recompensa de mayor a menor
SELECT Nombre, Recompensa FROM Piratas
ORDER BY Recompensa DESC;
```
![27](<27.png>)

### 28. Obtener marinos ordenados por rango
Descripción: Esta consulta obtiene los nombres de los marinos junto con su rango, ordenados por el nombre del rango.

```sql
-- 28. Obtener marinos ordenados por rango
SELECT M.Nombre AS Marino, R.Nombre AS Rango
FROM Marinos M
JOIN Rango_Marinos R ON M.Id_RangoM = R.Id_RangoM
ORDER BY R.Nombre;
```
![28](<28.png>)

### 29. Obtener batallas ordenadas por fecha
Descripción: Esta consulta devuelve las batallas ordenadas de forma ascendente por su fecha.

```sql
-- 29. Obtener batallas ordenadas por fecha
SELECT Nombre, Fecha FROM Batallas
ORDER BY Fecha ASC;
```
![29](<29.png>)

### 30. Obtener frutas del diablo ordenadas por poder de mayor a menor
Descripción: Esta consulta obtiene las frutas del diablo, ordenadas por su poder de mayor a menor.

```sql
-- 30. Obtener frutas del diablo ordenadas por poder de mayor a menor
SELECT Nombre, Poder FROM Frutas_del_Diablo
ORDER BY Poder DESC;
```
![30](<30.png>)

### 31. Contar batallas por isla y ordenar de mayor a menor
Descripción: Esta consulta cuenta el número de batallas por isla y las ordena de mayor a menor.

```sql
-- 31. Contar batallas por isla y ordenar de mayor a menor
SELECT I.Nombre AS Isla, COUNT(B.Id_Batalla) AS Cantidad_Batallas
FROM Islas I
LEFT JOIN Batallas B ON I.Id_Isla = B.Id_Isla
GROUP BY I.Nombre
ORDER BY Cantidad_Batallas DESC;
```
![31](<31.png>)

### 32. Obtener piratas con recompensa superior a la media
Descripción: Esta consulta devuelve los nombres de los piratas que tienen una recompensa superior a la media.

```sql
-- 32. Obtener piratas con recompensa superior a la media
SELECT Nombre, Recompensa FROM Piratas
WHERE Recompensa > (SELECT AVG(Recompensa) FROM Piratas);
```
![32](<32.png>)

### 33. Obtener marinos de la misma división que Monkey D. Garp
Descripción: Esta consulta obtiene los nombres de los marinos que pertenecen a la misma división que Monkey D. Garp.

```sql
-- 33. Obtener marinos de la misma división que Monkey D. Garp
SELECT M.Nombre AS Marino
FROM Marinos M
WHERE M.Id_Division = (SELECT Id_Division FROM Marinos WHERE Nombre = 'Monkey D. Garp');
```
![33](<33.png>)

###  34. Contar islas con más de 5 batallas
Descripción: Esta consulta cuenta el número de islas que tienen más de 5 batallas.

```sql
-- 34. Contar islas con más de 5 batallas
SELECT COUNT(*) FROM (
    SELECT I.Nombre, COUNT(B.Id_Batalla) AS Cantidad_Batallas
    FROM Islas I
    JOIN Batallas B ON I.Id_Isla = B.Id_Isla
    GROUP BY I.Nombre
    HAVING COUNT(B.Id_Batalla) > 5
) AS Subconsulta;
```
![34](<34.png>)

### 35. Obtener reinos que tuvieron más piratas que la media
Descripción: Esta consulta devuelve los nombres de los reinos que tienen más piratas que la media.

```sql
-- 35. Obtener reinos que tuvieron mas piratas que la media
SELECT R.Nombre
FROM Reinos R
JOIN Piratas_Reinos PR ON R.Id_Reino = PR.Id_Reino
GROUP BY R.Nombre
HAVING COUNT(PR.Id_Pirata) > (SELECT AVG(Cantidad) FROM (
    SELECT COUNT(Id_Pirata) AS Cantidad
    FROM Piratas_Reinos
    GROUP BY Id_Reino) AS Subconsulta);
```
![35](<35.png>)

### 36. Obtener los 5 piratas con mayor recompensa
Descripción: Esta consulta obtiene los 5 piratas con las mayores recompensas.

```sql
-- 36. Obtener los 5 piratas con mayor recompensa
SELECT Nombre, Recompensa FROM Piratas
ORDER BY Recompensa DESC
LIMIT 5;
```
![36](<36.png>)

### 37. Obtener la fruta del diablo más popular (más consumida)
Descripción: Esta consulta obtiene la fruta del diablo que ha sido consumida por más piratas.

```sql
-- 37. Obtener la fruta del diablo más popular (más consumida)
SELECT FD.Nombre
FROM Frutas_del_Diablo FD
JOIN Piratas_Frutas PF ON FD.Id_FrutaDiablo = PF.Id_FrutaDiablo
GROUP BY FD.Nombre
ORDER BY COUNT(PF.Id_Pirata) DESC
LIMIT 1;
```
![37](<37.png>)

### 38. Obtener marinos que no han participado en batallas
Descripción: Esta consulta devuelve los nombres de los marinos que no han participado en ninguna batalla.

```sql
-- 38. Obtener marinos que no han participado en batallas
SELECT M.Nombre
FROM Marinos M
LEFT JOIN Marinos_Batallas MB ON M.Id_Marino = MB.Id_Marino
WHERE MB.Id_Batalla IS NULL;
```
![38](<38.png>)

### 39. Obtener las batallas donde ganó un pirata de la tripulación de Luffy
Descripción: Esta consulta devuelve las batallas donde un pirata de la tripulación de Luffy ganó.

```sql
-- 39. Obtener las batallas donde ganó un pirata de la tripulación de Luffy
SELECT B.Nombre
FROM Batallas B
JOIN Piratas_Batallas PB ON B.Id_Batalla = PB.Id_Batalla
WHERE PB.Id_Pirata IN (
    SELECT P.Id_Pirata
    FROM Piratas P
    WHERE P.Id_Tripulacion = (SELECT T.Id_Tripulacion FROM Tripulaciones T WHERE T.Nombre = 'Sombrero de Paja')
)
AND B.Resultado = 'Victoria de los Piratas';
```
![39](<39.png>)

### 40. Obtener la recompensa total de los piratas de la tripulación de Luffy
Descripción: Esta consulta suma las recompensas de todos los piratas de la tripulación de Luffy.

```sql
-- 40. Obtener la recompensa total de los piratas de la tripulación de Luffy
SELECT SUM(Recompensa) AS Total_Recompensa
FROM Piratas
WHERE Id_Tripulacion = (SELECT Id_Tripulacion FROM Tripulaciones WHERE Nombre = 'Sombrero de Paja');
```
![40](<40.png>)

## Instalación

Descargar el código: Clona el repositorio desde el enlace proporcionado en GitHub usando el comando git clone <https://github.com/MichelAdrianTorradoRoa/One-Piece.git>.

Abrir en un cliente MySQL: Abre el archivo SQL del esquema y ejecútalo en un cliente MySQL como phpMyAdmin o MySQL Workbench para crear la base de datos y las tablas.

Cargar datos: Utiliza los scripts de inserciones para cargar datos iniciales en las tablas.

Ejecutar consultas: Utiliza las consultas proporcionadas para interactuar con la base de datos y extraer información útil.


## Autor

Hecho por [@MichelAdrianTorradoRoa](https://github.com/MichelAdrianTorradoRoa)

```sql
SELECT Nombre, Recompensa FROM Piratas
WHERE Recompensa > 100000;
```