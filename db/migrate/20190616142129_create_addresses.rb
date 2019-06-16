class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :taluka
      t.string :district
      t.string :state
      t.integer :pincode

      t.timestamps
    end
    add_index :addresses, :city
    add_index :addresses, :taluka
    add_index :addresses, :district
  end
end
