class AddColumnsToPurchaseItem < ActiveRecord::Migration[6.0]
  def change
    add_column :purchase_items, :artwork_id, :bigint
    add_column :purchase_items, :user_id, :bigint
  end
end
