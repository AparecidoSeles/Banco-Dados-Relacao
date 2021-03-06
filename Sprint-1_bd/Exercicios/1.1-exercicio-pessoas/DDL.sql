

USE Pessoas;
GO

CREATE TABLE Pessoas
(
	IdPessoa INT PRIMARY KEY IDENTITY
	,Nome	  VARCHAR (200) NOT NULL
);
GO

CREATE TABLE Telefones 
(
	IdTelefone INT PRIMARY KEY IDENTITY 
	,IdPessoa INT FOREIGN KEY REFERENCES Pessoas  (IdPessoa)
	,Descricao VARCHAR (200)
);
GO
CREATE TABLE Email
(
	IdEmail	INT PRIMARY KEY IDENTITY
	,IdPessoa INT FOREIGN KEY REFERENCES Pessoas (IdPessoa)
	,Descricao VARCHAR (200)
);
GO

CREATE TABLE CNHS
(
	IdCNH INT PRIMARY KEY IDENTITY
	,IdPessoa INT FOREIGN KEY REFERENCES Pessoas  (IdPessoa)
	,Descricao VARCHAR (200)
);
GO