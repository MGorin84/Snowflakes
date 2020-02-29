class AddCompletedToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :completed, :boolean
  end
end
