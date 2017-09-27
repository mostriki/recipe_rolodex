require('spec_helper')

describe(Recipe) do
    it("will show recipe name and rating") do
      test_recipe = Recipe.create({title: "Dawsons Homemade Curry", rating: 4})
      expect(test_recipe).to(eq(test_recipe))
    end
  end

  describe('#ingredients') do
    it("will show ingredients in a recipe") do
      test_recipe = Recipe.create({title: "Dawsons Homemade Curry", rating: 4})
      test_ingredient1 = Ingredient.create({name:"coconut milk"})
      test_ingredient2 = Ingredient.create({name:"curry paste"})
      test_recipe.ingredients.push(test_ingredient1)
      test_recipe.ingredients.push(test_ingredient2)
      expect(test_recipe.ingredients).to(eq([test_ingredient1, test_ingredient2]))
    end
  end

  describe(Recipe) do
    it { should have_and_belong_to_many(:ingredients)}
  end

  describe('#categories') do
    it("will show categories in a recipe") do
      test_recipe = Recipe.create({title: "Dawsons Homemade Curry", rating: 4})
      test_category1 = Category.create({tag:"Indian"})
      test_category2 = Category.create({tag:"Spicy"})
      test_recipe.categories.push(test_category1)
      test_recipe.categories.push(test_category2)
      expect(test_recipe.categories).to(eq([test_category1, test_category2]))
    end
  end

  describe(Recipe) do
    it { should have_and_belong_to_many(:categories)}
  end
