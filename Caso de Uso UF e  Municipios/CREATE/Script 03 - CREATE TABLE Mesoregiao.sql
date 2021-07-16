CREATE TABLE Mesoregiao (
	MesoregiaoID INT IDENTITY(1, 1) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	UFID INT NOT NULL,
	CONSTRAINT PK_Mesoregiao PRIMARY KEY(MesoregiaoID),
	CONSTRAINT FK_Mesoregiao_UnidadesFederacao FOREIGN KEY(UFID) REFERENCES UnidadesFederacao(UFID)
)
GO

