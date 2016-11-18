
CREATE PROCEDURE SignUpPro
	@UserName nvarchar(90),
	@Password nvarchar(90),
	@UserEmail nvarchar(90),
	@UserAddress nvarchar(90)
as
	insert into SignUpTb(UserName,UserPassword,UserEmail,UserAddress) values
						 (@UserName,@Password,@UserEmail,@UserAddress)
RETURN 
