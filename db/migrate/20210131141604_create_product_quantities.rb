class CreateProductQuantities < ActiveRecord::Migration[6.1]
  def change
    create_table :product_quantities do |t|
      t.references :product, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
