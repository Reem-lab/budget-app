class CreateGroupPurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :group_purchases do |t|
      t.integer :group_id
      t.integer :purchase_id

      t.timestamps
    end
  end
end
