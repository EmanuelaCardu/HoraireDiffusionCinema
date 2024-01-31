CREATE PROCEDURE [dbo].[SP_Movie_Insert]
	@Title NVARCHAR(64) NOT NULL,
	@SubTitle NVARCHAR(64) NULL,
	@ReleaseYears SMALLINT NOT NULL,
	@Synopsis NVARCHAR(256) NOT NULL,
	@PosterUrl NVARCHAR(256) NOT NULL,
	@Duration INT NOT NULL
AS
	INSERT INTO Movie ([Title] ,[SubTitle],[ReleaseYears] ,[Synopsis] ,
	[PosterUrl] ,[Duration])
	OUTPUT inserted.Id_Movie
	VALUES (@Title, @SubTitle,@ReleaseYears, @Synopsis,@PosterUrl,@Duration);




	