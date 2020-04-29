SELECT Matricula
FROM Carro
WHERE idCarro IN (SELECT idCarro FROM Reparacao GROUP BY(idCarro) HAVING COUNT(*) > 1);