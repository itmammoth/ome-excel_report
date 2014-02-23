class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :product_id
      t.date :sales_date
      t.integer :amount

      t.timestamps
    end
  end
end
