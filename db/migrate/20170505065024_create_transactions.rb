class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.text :delivery_address
      t.text :product

      t.timestamps
    end
  end
end
