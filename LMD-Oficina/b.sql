SELECT Matricula
FROM Reparacao, Carro
WHERE Carro.idCarro = Reparacao.idCarro AND strftime('%s', Reparacao.dataInicio) >= strftime('%s', '2010-09-01') AND
strftime('%s', Reparacao.dataFim) <= strftime('%s', '2010-09-30');