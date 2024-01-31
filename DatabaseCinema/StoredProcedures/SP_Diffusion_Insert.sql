CREATE PROCEDURE [dbo].[SP_Diffusion_Insert]
	@DiffusionDate DATE NOT NULL,
	@DiffusionTime TIMESTAMP NOT NULL,
	@AudioLang NVARCHAR (50) NOT NULL,
	@SubTitleLang NVARCHAR (50) NULL,
	@Id_Movie INT,
	@Id_CinemaRoom INT
AS
	INSERT INTO Diffusion ([DiffusionDate], [DiffusionTime],[AudioLang],[SubTitleLang],
	[Id_Movie], [Id_CinemaRoom])
	OUTPUT inserted.Id_Diffusion
	VALUES (@DiffusionDate,@DiffusionTime,@AudioLang,@SubTitleLang);
