CREATE TABLE [dbo].[CinemaRoom]
(
	[Id_CinemaRoom] INT NOT NULL PRIMARY KEY IDENTITY,
	[SitsCount] INT NOT NULL,
	[Number] INT NOT NULL,
	[ScreenWidth] INT NOT NULL,
	[ScreenHeight] INT NOT NULL,
	[Can3D] bit NOT NULL,
	[Can4DX] bit NOT NULL,
	[Id_CinemaPlace] INT NOT NULL
    CONSTRAINT [FK_CinemaRoom_CinemaPlace] FOREIGN KEY ([Id_CinemaPlace]) REFERENCES [CinemaPlace]([Id_CinemaPlace]) 



)
