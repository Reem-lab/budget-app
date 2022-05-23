class AddIndexToTables < ActiveRecord::Migration[7.0]
  def change
    add_index :purchases, :author_id
    add_index :groups, :author_id
    add_index :group_purchases, :group_id
    add_index :group_purchases, :purchase_id
  end
end
