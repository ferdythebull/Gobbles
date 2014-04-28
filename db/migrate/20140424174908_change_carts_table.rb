class ChangeCartsTable < ActiveRecord::Migration
  def change
    add_column :carts, :user_id, :integer
    remove_column :carts, :store_id 
  end
end
