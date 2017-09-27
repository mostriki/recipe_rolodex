class CreateCategoryRecipe < ActiveRecord::Migration[5.1]
  def change
    create_table(:categories_recipes) do |t|
      t.column(:id_category, :integer)
      t.column(:id_recipes, :integer)

      t.timestamps()
    end
  end
end
