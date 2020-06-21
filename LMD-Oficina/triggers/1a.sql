CREATE TRIGGER Oficina1A
AFTER INSERT ON Reparacao
WHEN (New.idCliente IS NULL)
BEGIN
UPDATE Reparacao
SET idCliente = (SELECT idCliente FROM Carro WHERE idCarro = New.idCarro)
WHERE idReparacao = New.idReparacao;
END;