SELECT DISTINCT nome
FROM Cliente NATURAL JOIN Reparacao NATURAL JOIN ReparacaoPeca; NATURAL JOIN Peca;
-- WHERE Cliente.idCliente = Carro.idCliente
-- AND Carro.idCarro = Reparacao.idCarro
-- AND Reparacao.idReparacao = ReparacaoPeca.idReparacao
-- AND ReparacaoPeca.idPeca = Peca.idPeca
-- AND Peca.custoUnitario > 10;