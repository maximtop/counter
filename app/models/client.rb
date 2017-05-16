class Client < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true, uniqueness: true
  has_many :transactions, dependent: :destroy
  accepts_nested_attributes_for :transactions, reject_if: :all_blank
end
