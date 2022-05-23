class AddUserRefToPurchases < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :purchases, :users, column: :author_id
  end
end
