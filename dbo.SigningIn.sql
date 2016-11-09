CREATE PROCEDURE [dbo].[SigningIn]
	@UserName nvarchar(90),
	@Password nvarchar(90)
AS
	insert into Signin(UserName,UserPassword) values
						 (@UserName,@Password)
RETURN 