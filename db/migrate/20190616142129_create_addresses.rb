class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :village_id
      t.integer :taluka_id
      t.integer :district_id
      t.string :state
      t.integer :pincode

      t.timestamps
    end
    add_index :addresses, :village_id
    add_index :addresses, :taluka_id
    add_index :addresses, :district_id
  end
end
