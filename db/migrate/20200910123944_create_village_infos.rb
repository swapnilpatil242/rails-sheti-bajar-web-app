class CreateVillageInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :village_infos do |t|
      t.integer :village_id
      t.text :description
      t.jsonb :other_info

      t.timestamps
    end
    add_index :village_infos, :village_id
  end
end
