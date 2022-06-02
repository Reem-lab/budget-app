class AddColumnToGroup < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :total_purchases, :integer
  end
end
