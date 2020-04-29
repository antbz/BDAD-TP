SELECT Cliente.idCliente, nome
FROM Cliente
WHERE idCliente NOT IN (SELECT idCliente FROM Carro);