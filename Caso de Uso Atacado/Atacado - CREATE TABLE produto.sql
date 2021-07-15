CREATE TABLE produto (
	produtoid INT NOT NULL IDENTITY(1,1),
	subcatid INT NOT NULL,
	catid INT NOT NULL,
	descricao VARCHAR(MAX) NOT NULL,
	datainsert DATETIME NOT NULL DEFAULT GETDATE(),
	CONSTRAINT pk_produto PRIMARY KEY (produtoid),
	CONSTRAINT fk_produto_subcategoria FOREIGN KEY (subcatid) REFERENCES subcategoria(subcatid)
)
GO