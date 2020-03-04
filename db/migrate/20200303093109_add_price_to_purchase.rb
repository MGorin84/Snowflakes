class AddPriceToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :total_price, :decimal
  end
end
