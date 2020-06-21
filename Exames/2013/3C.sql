SELECT DISTINCT hostname
FROM (Servidor JOIN Pessoa ON Servidor.idResponsavel = idPessoa) JOIN AplicacaoServidor USING (idServidor) JOIN Bug USING (idAplicacao)
WHERE hostname LIKE 'alu%' AND mail = 'joao.almeida@cica.pt';