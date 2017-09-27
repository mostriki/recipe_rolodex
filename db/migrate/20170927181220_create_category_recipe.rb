class CreateCategoryRecipe < ActiveRecord::Migration[5.1]
  def change
    create_table(:categories_recipes) do |t|
      t.column(:category_id, :integer)
      t.column(:recipe_id, :integer)

      t.timestamps()
    end
  end
end
