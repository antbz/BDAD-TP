SELECT idCarro, COUNT(*)
FROM Reparacao
GROUP BY(idCarro);