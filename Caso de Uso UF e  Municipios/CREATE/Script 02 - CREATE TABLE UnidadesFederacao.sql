CREATE TABLE UnidadesFederacao(
	UFID INT IDENTITY(1, 1) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	SiglaUF CHAR(2) NOT NULL,
	RegiaoID INT NOT NULL,
	CONSTRAINT PK_UnidadesFederacao PRIMARY KEY(UFID),
	CONSTRAINT FK_UnidadesFederacao_Regiao FOREIGN KEY(RegiaoID) REFERENCES Regiao(RegiaoID)
)
GO



