-- 1. Obtener el nombre y el monarca de todos los reinos
SELECT Nombre, Monarca FROM Reinos; 

-- 2. Obtener el nombre y la recompensa de todos los piratas
SELECT Nombre, Recompensa FROM Piratas;

-- 3. Obtener el nombre de los marinos y su rango
SELECT M.Nombre AS Marino, R.Nombre AS Rango
FROM Marinos M
JOIN Rango_Marinos R ON M.Id_RangoM = R.Id_RangoM;

-- 4. Obtener el nombre y la descripción de las divisiones de marinos
SELECT Nombre, Descripcion FROM Division_Marinos;

-- 5. Obtener el nombre, tipo y poder de las frutas del diablo
SELECT Nombre, Tipo, Poder FROM Frutas_del_Diablo;

-- 6. Obtener la tripulación de Monkey D. Luffy
SELECT T.Nombre AS Tripulacion
FROM Tripulaciones T
JOIN Piratas P ON T.Id_Tripulacion = P.Id_Tripulacion
WHERE P.Nombre = 'Monkey D. Luffy';

-- 7. Obtener el nombre de los marinos y las batallas en las que participaron
SELECT M.Nombre AS Marino, B.Nombre AS Batalla
FROM Marinos M
JOIN Marinos_Batallas MB ON M.Id_Marino = MB.Id_Marino
JOIN Batallas B ON MB.Id_Batalla = B.Id_Batalla;

-- 8. Obtener los piratas y los reinos que estuvieron
SELECT R.Nombre AS Reino, P.Nombre AS Pirata
FROM Reinos R
JOIN Piratas_Reinos PR ON R.Id_Reino = PR.Id_Reino
JOIN Piratas P ON PR.Id_Pirata = P.Id_Pirata;

-- 9. Contar la cantidad de piratas que estuvieron en cada reino
SELECT R.Nombre AS Reino, COUNT(P.Id_Pirata) AS Cantidad_Piratas
FROM Reinos R
LEFT JOIN Piratas_Reinos PR ON R.Id_Reino = PR.Id_Reino
LEFT JOIN Piratas P ON PR.Id_Pirata = P.Id_Pirata
GROUP BY R.Nombre;

-- 10. Contar la cantidad de marinos por rango
SELECT R.Nombre AS Rango, COUNT(M.Id_Marino) AS Cantidad_Marinos
FROM Rango_Marinos R
LEFT JOIN Marinos M ON R.Id_RangoM = M.Id_RangoM
GROUP BY R.Nombre;

-- 11. Contar la cantidad de batallas en cada isla
SELECT I.Nombre AS Isla, COUNT(B.Id_Batalla) AS Cantidad_Batallas
FROM Islas I
LEFT JOIN Batallas B ON I.Id_Isla = B.Id_Isla
GROUP BY I.Nombre;

-- 12. Contar la cantidad total de armamentos por tipo
SELECT Tipo, SUM(Cantidad) AS Total_Cantidad
FROM Armamentos
GROUP BY Tipo;

-- 13. Contar la cantidad total de frutas del diablo por tipo
SELECT Tipo, COUNT(*) AS Total
FROM Frutas_del_Diablo
GROUP BY Tipo;

-- 14. Obtener los piratas con recompensa mayor a 100,000
SELECT Nombre, Recompensa FROM Piratas
WHERE Recompensa > 100000;

-- 15. Obtener los marinos de la división 'G-1'
SELECT M.Nombre AS Marino
FROM Marinos M
JOIN Division_Marinos D ON M.Id_Division = D.Id_Division
WHERE D.Nombre = 'G-1';

-- 16. Obtener batallas que ocurrieron en 2020
SELECT Nombre, Fecha FROM Batallas
WHERE YEAR(Fecha) = 2020;

-- 17. Obtener los piratas que consumieron la fruta 'Mera Mera no Mi'
SELECT P.Nombre AS Pirata
FROM Piratas P
JOIN Piratas_Frutas PF ON P.Id_Pirata = PF.Id_Pirata
JOIN Frutas_del_Diablo FD ON PF.Id_FrutaDiablo = FD.Id_FrutaDiablo
WHERE FD.Nombre = 'Mera Mera no Mi';

-- 18. Obtener los piratas con recompensa menor a 50,000
SELECT Nombre, Recompensa FROM Piratas
WHERE Recompensa < 50000;

-- 19. Obtener la lista de nombres de piratas y marinos
SELECT Nombre FROM Piratas
UNION
SELECT Nombre FROM Marinos;

-- 20. Obtener la lista de nombres de islas y reinos
SELECT Nombre AS Nombre FROM Islas
UNION
SELECT Nombre FROM Reinos;

-- 21. Contar total de tripulaciones y marinos
SELECT 'Tripulaciones' AS Tipo, COUNT(*) AS Total FROM Tripulaciones
UNION ALL
SELECT 'Marinos', COUNT(*) FROM Marinos;

-- 22. Obtener piratas, su tripulación y la isla donde se encuentran
SELECT P.Nombre AS Pirata, T.Nombre AS Tripulacion, I.Nombre AS Isla
FROM Piratas P
JOIN Tripulaciones T ON P.Id_Tripulacion = T.Id_Tripulacion
JOIN Piratas_Islas PI ON P.Id_Pirata = PI.Id_Pirata
JOIN Islas I ON PI.Id_Isla = I.Id_Isla;

-- 23. Obtener batallas y piratas involucrados en victorias de los piratas
SELECT B.Nombre AS Batalla, P.Nombre AS Pirata
FROM Batallas B
JOIN Piratas_Batallas PB ON B.Id_Batalla = PB.Id_Batalla
JOIN Piratas P ON PB.Id_Pirata = P.Id_Pirata
WHERE B.Resultado = 'Victoria de los Piratas';

-- 24. Obtener marinos, islas y batallas en islas específicas
SELECT M.Nombre AS Marino, I.Nombre AS Isla, B.Nombre AS Batalla
FROM Marinos M
JOIN Marinos_Batallas MB ON M.Id_Marino = MB.Id_Marino
JOIN Batallas B ON MB.Id_Batalla = B.Id_Batalla
JOIN Islas I ON B.Id_Isla = I.Id_Isla
WHERE I.Nombre IN ('Isla de las Sirenas', 'Alabasta');

-- 25. Contar la cantidad de frutas del diablo por pirata
SELECT P.Nombre AS Pirata, COUNT(PF.Id_FrutaDiablo) AS Cantidad_Frutas
FROM Piratas P
LEFT JOIN Piratas_Frutas PF ON P.Id_Pirata = PF.Id_Pirata
GROUP BY P.Nombre;

-- 26. Contar la cantidad de marinos por división
SELECT D.Nombre AS Division, COUNT(M.Id_Marino) AS Cantidad_Marinos
FROM Division_Marinos D
LEFT JOIN Marinos M ON D.Id_Division = M.Id_Division
GROUP BY D.Nombre;

-- 27. Obtener piratas ordenados por recompensa de mayor a menor
SELECT Nombre, Recompensa FROM Piratas
ORDER BY Recompensa DESC;

-- 28. Obtener marinos ordenados por rango
SELECT M.Nombre AS Marino, R.Nombre AS Rango
FROM Marinos M
JOIN Rango_Marinos R ON M.Id_RangoM = R.Id_RangoM
ORDER BY R.Nombre;

-- 29. Obtener batallas ordenadas por fecha
SELECT Nombre, Fecha FROM Batallas
ORDER BY Fecha ASC;

-- 30. Obtener frutas del diablo ordenadas por poder de mayor a menor
SELECT Nombre, Poder FROM Frutas_del_Diablo
ORDER BY Poder DESC;

-- 31. Contar batallas por isla y ordenar de mayor a menor
SELECT I.Nombre AS Isla, COUNT(B.Id_Batalla) AS Cantidad_Batallas
FROM Islas I
LEFT JOIN Batallas B ON I.Id_Isla = B.Id_Isla
GROUP BY I.Nombre
ORDER BY Cantidad_Batallas DESC;

-- 32. Obtener piratas con recompensa superior a la media
SELECT Nombre, Recompensa FROM Piratas
WHERE Recompensa > (SELECT AVG(Recompensa) FROM Piratas);

-- 33. Obtener marinos de la misma división que Monkey D. Garp
SELECT M.Nombre AS Marino
FROM Marinos M
WHERE M.Id_Division = (SELECT Id_Division FROM Marinos WHERE Nombre = 'Monkey D. Garp');

-- 34. Contar islas con más de 5 batallas
SELECT COUNT(*) FROM (
    SELECT I.Nombre, COUNT(B.Id_Batalla) AS Cantidad_Batallas
    FROM Islas I
    JOIN Batallas B ON I.Id_Isla = B.Id_Isla
    GROUP BY I.Nombre
    HAVING COUNT(B.Id_Batalla) > 5
) AS Subconsulta;

-- 35. Obtener reinos que tuvieron mas piratas que la media
SELECT R.Nombre
FROM Reinos R
JOIN Piratas_Reinos PR ON R.Id_Reino = PR.Id_Reino
GROUP BY R.Nombre
HAVING COUNT(PR.Id_Pirata) > (SELECT AVG(Cantidad) FROM (
    SELECT COUNT(Id_Pirata) AS Cantidad
    FROM Piratas_Reinos
    GROUP BY Id_Reino) AS Subconsulta);

-- 36. Obtener los 5 piratas con mayor recompensa
SELECT Nombre, Recompensa FROM Piratas
ORDER BY Recompensa DESC
LIMIT 5;

-- 37. Obtener la fruta del diablo más popular (más consumida)
SELECT FD.Nombre
FROM Frutas_del_Diablo FD
JOIN Piratas_Frutas PF ON FD.Id_FrutaDiablo = PF.Id_FrutaDiablo
GROUP BY FD.Nombre
ORDER BY COUNT(PF.Id_Pirata) DESC
LIMIT 1;

-- 38. Obtener marinos que no han participado en batallas
SELECT M.Nombre
FROM Marinos M
LEFT JOIN Marinos_Batallas MB ON M.Id_Marino = MB.Id_Marino
WHERE MB.Id_Batalla IS NULL;

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

-- 40. Obtener la recompensa total de los piratas de la tripulación de Luffy
SELECT SUM(Recompensa) AS Total_Recompensa
FROM Piratas
WHERE Id_Tripulacion = (SELECT Id_Tripulacion FROM Tripulaciones WHERE Nombre = 'Sombrero de Paja');
