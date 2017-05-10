class Client < ApplicationRecord
  has_many :transactions
  accepts_nested_attributes_for :transactions, reject_if: :all_blank
end
