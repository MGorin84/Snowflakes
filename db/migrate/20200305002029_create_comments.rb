class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.bigint :user_id
      t.text :body
      t.references :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
