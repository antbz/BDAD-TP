CREATE TRIGGER Oficina1C
AFTER INSERT ON ReparacaoPeca
BEGIN
UPDATE Peca
SET quantidade = quantidade - New.quantidade
WHERE idPeca = New.idPeca;
END;