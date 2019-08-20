class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name, unique: true
      t.string :description
      t.string :address
      t.integer :image_id

      t.timestamps
    end
  end
end
