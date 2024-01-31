CREATE TABLE [dbo].[Diffusion]
(
	[Id_Diffusion] INT NOT NULL PRIMARY KEY IDENTITY,
	[DiffusionDate] DATE NOT NULL,
	[DiffusionTime] TIMESTAMP NOT NULL,
	[AudioLang] NVARCHAR (50) NOT NULL,
	[SubTitleLang] NVARCHAR (50) NULL,
	[Id_CinemaRoom] INT,
	[Id_Movie] INT, 
    CONSTRAINT [FK_Diffusion_CinemaRoom] FOREIGN KEY ([Id_CinemaRoom]) REFERENCES [CinemaRoom]([Id_CinemaRoom]), 
    CONSTRAINT [FK_Diffusion_Movie] FOREIGN KEY ([Id_Movie]) REFERENCES [Movie]([Id_Movie])


	

)
