class AddTransactionsToClient < ActiveRecord::Migration[5.0]
  def change
    add_reference :clients, :transactions, foreign_key: true
  end
end
