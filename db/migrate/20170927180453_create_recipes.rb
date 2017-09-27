class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:title, :string)
      t.column(:rating, :integer)

      t.timestamps()
    end
  end
end
