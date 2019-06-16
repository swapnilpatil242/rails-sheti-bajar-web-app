class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.string :logo

      t.timestamps
    end
    add_index :categories, :title
  end
end
