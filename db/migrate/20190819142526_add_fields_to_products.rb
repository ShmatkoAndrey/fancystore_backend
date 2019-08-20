class AddFieldsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :name, :string
    add_column :products, :description, :string
    add_column :products, :price, :integer
    add_column :products, :discount, :integer
    add_column :products, :shop_id, :integer
    add_column :products, :category_id, :integer
  end
end
