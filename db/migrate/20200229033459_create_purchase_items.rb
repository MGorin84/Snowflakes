class CreatePurchaseItems < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_items do |t|

      t.timestamps
    end
  end
end
