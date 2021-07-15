CREATE TABLE Microregiao (
	MicroregiaoID INT IDENTITY(1, 1) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	MesoregiaoID INT NOT NULL,
	CONSTRAINT PK_Microregiao PRIMARY KEY(MicroregiaoID),
	CONSTRAINT FK_Microregiao_Mesoregiao FOREIGN KEY(MesoregiaoID) REFERENCES Mesoregiao(MesoregiaoID)
)
GO
