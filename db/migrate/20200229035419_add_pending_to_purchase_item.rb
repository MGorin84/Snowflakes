class AddPendingToPurchaseItem < ActiveRecord::Migration[6.0]
  def change
    add_column :purchase_items, :pending, :boolean
  end
end
