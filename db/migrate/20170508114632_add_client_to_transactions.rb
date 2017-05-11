class AddClientToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_reference :transactions, :client, foreign_key: true
  end
end
