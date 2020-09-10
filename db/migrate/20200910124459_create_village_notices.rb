class CreateVillageNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :village_notices do |t|
      t.integer :village_id
      t.integer :user_id
      t.string :status, comment: 'active/delete'
      t.string :title
      t.text :message

      t.timestamps
    end
    add_index :village_notices, :village_id
    add_index :village_notices, :user_id
  end
end
