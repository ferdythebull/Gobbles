class AddFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :name, :string
    add_column :products, :image, :string
    add_column :products, :description, :string
    add_column :products, :price, :string
  end
end
