class AddColunmToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :purchase_item_id, :bigint
  end
end
