class RemoveStoreIdColumn < ActiveRecord::Migration
  def change
    remove_column :carts, :store_id
  end
end
