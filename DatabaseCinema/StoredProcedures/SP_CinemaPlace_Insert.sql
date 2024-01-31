CREATE PROCEDURE [dbo].[SP_CinemaPlace_Insert]
	@Name NVARCHAR(64) NOT NULL,
	@City NVARCHAR(64) NOT NULL,
	@Street NVARCHAR(128) NOT NULL,
	@Number NVARCHAR(8) NOT NULL 
AS
	INSERT INTO CinemaPlace ([Name],[City], [Street],[Number])
OUTPUT inserted.Id_CinemaPlace
VALUES (@Name, @City, @Street, @Number);
