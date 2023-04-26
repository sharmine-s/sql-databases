require_relative './database_connection'
require_relative './recipe'

class RecipeRepository

  # Selecting all records
  # No arguments
  def all
    query = 'SELECT id, name, average_cooking_time, rating FROM recipes;'
    result = DatabaseConnection.exec_params(query, [])

    recipes = []

    result.each { |record|
      recipe = Recipe.new
      recipe.id = record['id']
      recipe.name = record['name']
      recipe.average_cooking_time = record['average_cooking_time']
      recipe.rating = record['rating']

      recipes << recipe
    }

    return recipes

    # Returns an array of Recipe objects.
  end

  # Gets a single record by its ID
  # One argument: the id (number)
  def find(id)
    query = 'SELECT id, name, average_cooking_time, rating FROM recipes WHERE id = $1';
    params = [id]
    result = DatabaseConnection.exec_params(query, params)[0]

    recipe = Recipe.new
    recipe.id = result['id']
    recipe.name = result['name']
    recipe.average_cooking_time = result['average_cooking_time']
    recipe.rating = result['rating']

    return recipe
    
    # Returns a single Recipe object.
  end

end