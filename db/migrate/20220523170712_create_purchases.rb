class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :name
      t.integer :amount
      t.integer :author_id

      t.timestamps
    end
  end
end
