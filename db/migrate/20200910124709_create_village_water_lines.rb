class CreateVillageWaterLines < ActiveRecord::Migration[5.2]
  def change
    create_table :village_water_lines do |t|
      t.integer :village_id
      t.integer :user_id
      t.integer :lane_no
      t.string :lane_name
      t.string :status, comment: 'active/previous/next'

      t.timestamps
    end
    add_index :village_water_lines, :village_id
    add_index :village_water_lines, :user_id
    add_index :village_water_lines, :lane_no
  end
end
