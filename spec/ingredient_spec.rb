require('spec_helper')

describe(Ingredient) do
    it("will show a recipes for ingredient") do
      test_ingredient1 = Ingredient.create({name: "coconut milk"})
      test_recipe1 = Recipe.create({title: "curry", rating:5})
      test_ingredient1.recipes.push(test_recipe1)
      expect(test_ingredient1.recipes).to(eq([test_recipe1]))
    end
  end
