class Transaction < ApplicationRecord
  belongs_to :client, inverse_of: :transactions
  accepts_nested_attributes_for :client, reject_if: :all_blank
end
