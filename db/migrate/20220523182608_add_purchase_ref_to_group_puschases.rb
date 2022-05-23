class AddPurchaseRefToGroupPuschases < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :group_purchases, :purchases, column: :purchase_id
  end
end
