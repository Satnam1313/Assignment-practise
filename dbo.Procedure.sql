CREATE PROCEDURE [dbo].[AddingRecipe]
	@RecipeName nvarchar(90),
	@SubmittedBy nvarchar(90),
	@Category nvarchar(90),
	@CookingTime nvarchar(90),
	@Cuisine nvarchar(90),
	@RecipeDescription nvarchar(90),
	@RecipeSteps nvarchar(90)
AS
	insert into AddRecipe (RecipeNumbers, RecipeName ,SubmittedBy,Category, CookingTime,Cuisine ,Limits ,RecipeDescription ,RecipeSteps ,RecipeImage  ) values (@RecipeName ,	@SubmittedBy ,	@Category ,	@CookingTime, @Cuisine ,	@RecipeDescription, 	@RecipeSteps)
RETURN 
