class CreateUploadedFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :uploaded_files do |t|
      t.string :file_name
      t.references :imageable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
