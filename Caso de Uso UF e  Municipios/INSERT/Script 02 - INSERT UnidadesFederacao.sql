ALTER TABLE UnidadesFederacao ADD datainsert DATETIME NULL DEFAULT GETDATE()
GO

INSERT INTO UnidadesFederacao (Descricao, SiglaUF, RegiaoID)
VALUES
('Rond�nia', 'RO', 1),
('Acre', 'AC', 1),
('Amazonas', 'AM', 1),
('Roraima', 'RR', 1),
('Par�', 'PA', 1),
('Amap�', 'AP', 1),
('Tocantins', 'TO', 1),
('Maranh�o', 'MA', 2),
('Piau�', 'PI', 2),
('Cear�', 'CE', 2),
('Rio Grande do Norte', 'RN', 2),
('Para�ba', 'PB', 2),
('Pernambuco', 'PE', 2),
('Alagoas', 'AL', 2),
('Sergipe', 'SE', 2),
('Bahia', 'BA', 2),
('Minas Gerais', 'MG', 4),
('Esp�rito Santo', 'ES', 4),
('Rio de Janeiro', 'RJ', 4),
('S�o Paulo', 'SP', 4),
('Paran�', 'PR', 5),
('Santa Catarina', 'SC', 5),
('Rio Grande do Sul', 'RS', 5),
('Mato Grosso do Sul', 'MS', 3),
('Mato Grosso', 'MT', 3),
('Goi�s', 'GO', 3),
('Distrito Federal', 'DF', 3)
GO

SELECT * FROM UnidadesFederacao
GO