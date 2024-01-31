CREATE PROCEDURE [dbo].[SP_CinemaRoom_Insert]
	@SitsCount INT NOT NULL,
	@Number INT NOT NULL,
	@ScreenWidth INT NOT NULL,
	@ScreenHeight INT NOT NULL,
	@Can3D bit NOT NULL,
	@Can4DX bit NOT NULL,
	@Id_CinemaPlace INT
AS
	INSERT INTO CinemaRoom ([SitsCount] , [Number],[ScreenWidth],[ScreenHeight],
	[Can3D],[Can4DX],[Id_CinemaPlace])
	OUTPUT inserted.Id_CinemaRoom
	VALUES (@SitsCount, @Number,@ScreenWidth, @ScreenHeight, @Can3D, @Can4DX,@Id_CinemaPlace);

