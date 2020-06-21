CREATE TRIGGER Oficina1B
BEFORE INSERT ON ReparacaoPeca
WHEN New.idPeca NOT IN 
(SELECT idPeca 
FROM PecaModelo 
WHERE idModelo = (SELECT idModelo FROM Carro WHERE idCarro = (SELECT idCarro FROM Reparacao WHERE idReparacao = New.idReparacao)))
OR
New.idPeca IN
(SELECT idPeca
FROM Peca
WHERE quantidade < New.quantidade)
BEGIN
SELECT RAISE(IGNORE);
END;