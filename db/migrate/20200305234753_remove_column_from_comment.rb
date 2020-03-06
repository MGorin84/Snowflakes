class RemoveColumnFromComment < ActiveRecord::Migration[6.0]
  def change

    remove_column :comments, :user_id, :bigint
  end
end
