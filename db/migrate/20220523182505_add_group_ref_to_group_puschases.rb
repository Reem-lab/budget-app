class AddGroupRefToGroupPuschases < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :group_purchases, :groups, column: :group_id
  end
end
