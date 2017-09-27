require('spec_helper')

describe(Category) do
    it("will show a catagories in a recipe") do
      test_category = Category.create({tag: "Indian"})
      test_recipe = Recipe.create({title: "coconut milk", rating: 4})
      test_category.recipes.push(test_recipe)
      expect(test_category.recipes).to(eq([test_recipe]))
    end
  end

  describe(Category) do
    it {should have_and_belong_to_many(:recipes)}
  end
