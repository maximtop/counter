class Transaction < ApplicationRecord
  validates :delivery_address, presence: true
  validates :product, presence: true
  validates :date, presence: true
  belongs_to :client, inverse_of: :transactions
  accepts_nested_attributes_for :client, reject_if: :all_blank
end
