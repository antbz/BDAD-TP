SELECT nome, Carro.idCarro, Carro.idCliente
FROM Cliente NATURAL JOIN Reparacao, Carro
WHERE Reparacao.idCarro = Carro.idCarro;