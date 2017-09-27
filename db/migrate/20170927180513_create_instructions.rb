class CreateInstructions < ActiveRecord::Migration[5.1]
  def change
    create_table(:instructions) do |t|
      t.column(:step, :string)

      t.timestamps()
    end
  end
end
