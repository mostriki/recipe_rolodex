require('pry')

require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file}

get('/') do
  @recipes = Recipe.all()
  erb(:index)
end

post('/') do
  title = params['title']
  @recipes = Recipe.create({title: title})
  redirect('/')
end

# delete('/') do
#   @recipes = Recipe.find(params['id'])
#   @recipes.title.each { |t| t.delete }
#   @recipes.delete
# end

get('/ingredients/:id') do
  @recipe = Recipe.find(params['id'])
  erb(:ingredients)
end

post('/ingredients/:id') do
  @recipe = Recipe.find(params['id'])
  name = params['name']
  ingredient = Ingredient.create({name: name})
  @recipe.ingredients.push(ingredient)
  erb(:ingredients)
end
