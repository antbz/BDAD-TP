SELECT hostname, descricao, nome
FROM AplicacaoServidor JOIN Servidor USING (idServidor) JOIN Bug USING (idAplicacao) JOIN Pessoa ON Servidor.idResponsavel = Pessoa.idPessoa
WHERE vulnerabilidade = 'sim'
ORDER BY hostname;