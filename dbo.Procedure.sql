CREATE PROCEDURE [dbo].[AddingRecipe]
	@RecipeName nvarchar(90),
	@SubmittedBy nvarchar(90),
	@Category nvarchar(90),
	@CookingTime nvarchar(90),
	@Cuisine nvarchar(90),
	@Limits nvarchar(90),
	@RecipeDescription nvarchar(90),
	@RecipeSteps text 
AS
	insert into AddRecipe ( RecipeName ,SubmittedBy,Category, CookingTime,Cuisine ,Limits ,RecipeDescription ,RecipeSteps  ) values
						 (@RecipeName ,	@SubmittedBy ,	@Category ,	@CookingTime, @Cuisine ,@Limits,	@RecipeDescription, 	@RecipeSteps)
RETURN 
