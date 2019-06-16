class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :mobile_no
      t.string :profile
      t.boolean :is_verified, default: false 
      t.boolean :is_deleted, default: false
      t.boolean :is_suspended, default: false
      t.string :secrete_token
      t.references :address, foreign_key: true

      t.timestamps
    end
    add_index :users, :mobile_no
    add_index :users, :is_verified
    add_index :users, :is_deleted
    add_index :users, :is_suspended
    add_index :users, :secrete_token
  end
end
