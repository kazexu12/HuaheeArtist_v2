SELECT * FROM Product

CREATE PROC spUploadImage
	@Name nvarchar(255),
	@Size int,
	@ImageData varbinary(max),
	@NewId int output
	as
	Begin
		Insert into [C:\USERS\ASUS\SOURCE\REPOS\HUAHEEARTIST_V2\HUAHEEARTIST_V2\APP_DATA\ARTIST.MDF]
		values(@Name,@Size,@ImageData)

		SELECT @NewId = SCOPE_IDENTITY()
End

