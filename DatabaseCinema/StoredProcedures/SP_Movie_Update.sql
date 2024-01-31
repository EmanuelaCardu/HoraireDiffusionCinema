CREATE PROCEDURE [dbo].[SP_Movie_Update]
	@Id_Movie INT,
    @Title NVARCHAR(64) NOT NULL,
    @Subtitle NVARCHAR(64) NULL,
    @ReleaseYear SMALLINT NOT NULL,
    @Synopsis NVARCHAR(256) NOT NULL,
    @PosterUrl NVARCHAR(256) NOT NULL,
    @Duration INT NOT NULL
AS
	 UPDATE Movie
        SET
            [Title] = @Title,
            [Subtitle] = @Subtitle,
            [ReleaseYears] = @ReleaseYear,
            [Synopsis] = @Synopsis,
            [PosterUrl] = @PosterUrl,
            [Duration] = @Duration
        WHERE [Id_Movie] = @Id_Movie;
