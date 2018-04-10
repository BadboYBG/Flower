class Bill < ApplicationRecord
  has_many :detail_bills, dependent: :destroy
  belongs_to :user

  accepts_nested_attributes_for :detail_bills

  validates :total_money, presence: true
  validates :date_order, presence: true
  validates :date_delivery, presence: true

end
