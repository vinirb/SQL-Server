CREATE TABLE Municipio (
	MunicipioID int IDENTITY(1, 1) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	MesoregiaoID INT NOT NULL,
	MicroregiaoID INT NOT NULL,
	UFID INT NOT NULL,
	CONSTRAINT PK_Municipio PRIMARY KEY(MunicipioID),
	CONSTRAINT FK_Municipio_UnidadesFederacao FOREIGN KEY(UFID) REFERENCES UnidadesFederacao(UFID),
	CONSTRAINT FK_Municipio_Mesoregiao FOREIGN KEY(MesoregiaoID) REFERENCES Mesoregiao(MesoregiaoID),
	CONSTRAINT FK_Municipio_Microregiao FOREIGN KEY(MicroregiaoID) REFERENCES Microregiao(MicroregiaoID)
)
GO


