CREATE TABLE [dbo].[CinemaPlace]
(
	[Id_CinemaPlace] INT NOT NULL PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(64) NOT NULL,
	[City] NVARCHAR(64) NOT NULL,
	[Street] NVARCHAR(128) NOT NULL,
	[Number] NVARCHAR(8) NOT NULL, 
    CONSTRAINT [AK_CinemaPlace_Column] UNIQUE ([Id_CinemaPlace])

)
