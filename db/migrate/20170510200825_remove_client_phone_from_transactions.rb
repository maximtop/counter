class RemoveClientPhoneFromTransactions < ActiveRecord::Migration[5.0]
  def change
    remove_column :transactions, :client_phone, :string
  end
end
