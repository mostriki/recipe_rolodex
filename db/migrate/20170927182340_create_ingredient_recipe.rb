class CreateIngredientRecipe < ActiveRecord::Migration[5.1]
  def change
    create_table(:ingredients_recipes) do |t|
      t.column(:id_ingredient, :integer)
      t.column(:id_recipe, :integer)

      t.timestamps()
    end
  end
end
