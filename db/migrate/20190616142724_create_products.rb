class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :quantity
      t.boolean :is_verified, default: false
      t.boolean :is_deleted, default: false
      t.boolean :is_blocked, default: false
      t.boolean :is_completed, default: false
      t.references :address, foreign_key: true
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :products, :is_verified
    add_index :products, :is_deleted
    add_index :products, :is_blocked
    add_index :products, :is_completed
  end
end
