class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :status
      t.integer :payment_status
      t.integer :delivery_status
      t.string :delivery_address

      t.timestamps
    end
  end
end
