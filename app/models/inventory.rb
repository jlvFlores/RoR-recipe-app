class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventory_foods
  has_many :foods, through: :inventory_foods

  attribute :description, :text

  validates :name, presence: true
end
