class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :description
      t.string :image
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :amenties
      t.string :facilities
      t.string :date
      t.integer :price
      t.string :services

      t.timestamps null: false
    end
  end
end
