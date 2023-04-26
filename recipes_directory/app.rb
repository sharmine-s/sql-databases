require_relative 'lib/database_connection'
require_relative 'lib/recipe'
require_relative 'lib/recipe_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('recipes_directory')

# Perform a SQL query on the database and get the result set.
# sql = 'SELECT id, title FROM albums;'
# result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .

result = RecipeRepository.new

result.all.each do |record|
  p record.id + " - " + record.name + " - " + record.average_cooking_time + " - " + record.rating
end