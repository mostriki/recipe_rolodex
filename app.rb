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

get('/instructions/:id') do
  @recipe = Recipe.find(params['id'])
  erb(:instructions)
end

post('/instructions/:id') do
  @recipe = Recipe.find(params['id'])
  step = params['step']
  steps = Instruction.create({step: step})
  @recipe.instructions.push(steps)
  erb(:instructions)
end

post('/instructions/tag/:id') do
  @recipe = Recipe.find(params['id'])
  tag = params['tag']
  tag = Category.create({tag: tag})
  @recipe.categories.push(tag)
  erb(:instructions)
end

get('/recipe_page/:id') do
  @recipe = Recipe.find(params['id'])
  erb(:recipe_page)
end

patch('/recipe_page/:id') do
  @recipe = Recipe.find(params['id'])
  rating_input = params['rating']
  @rating = Recipe.update({rating: rating_input})
  @recipe = @recipe.rating
  @recipe = Recipe.find(params['id'])
  erb(:recipe_page)
end
