require('spec_helper')

describe(Instruction) do
    it("will show multiple instructions for a recipe") do
      test_recipe = Recipe.create({title: "Beouf Burguione",rating: 4})
      test_instruction = Instruction.create({step: "Pour yourself a glass of wine first.", recipe_id: test_recipe.id})
      test_instruction2 = Instruction.create({step: "Pat Dry Your Beef ",recipe_id: test_recipe.id})
      expect(test_recipe.instructions).to(eq([test_instruction, test_instruction2]))
    end
  end
