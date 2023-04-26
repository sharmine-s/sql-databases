require_relative '../lib/recipe_repository'
require_relative '../lib/database_connection'

def reset_recipes_table
  seed_sql = File.read('spec/seeds_recipes.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
  connection.exec(seed_sql)
end

describe RecipeRepository do
  before(:each) do 
    reset_recipes_table
  end

  it "Returns all recipes" do
    repo = RecipeRepository.new
    recipes = repo.all

    expect(recipes.length).to eq 2

    expect(recipes.first.id).to eq '1'
    expect(recipes.first.name).to eq 'Prawn risotto'
    expect(recipes.first.average_cooking_time).to eq '45'
    expect(recipes.first.rating).to eq '5'

    expect(recipes[1].id).to eq '2'
    expect(recipes[1].name).to eq 'Lamb sausage and mash'
    expect(recipes[1].average_cooking_time).to eq '15'
    expect(recipes[1].rating).to eq '3'
  end

  it "Finds a recipe by id" do
    repo = RecipeRepository.new
    recipe = repo.find(1)

    expect(recipe.name).to eq 'Prawn risotto'
    expect(recipe.average_cooking_time).to eq '45'
    expect(recipe.rating).to eq '5'
  end
end