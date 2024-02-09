class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.interger :product_id
      t.interger :status
      t.timestamps
    end
  end
end
