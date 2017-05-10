class RemoveClientFromTransactions < ActiveRecord::Migration[5.0]
  def change
    remove_column :transactions, :client, :string
  end
end
