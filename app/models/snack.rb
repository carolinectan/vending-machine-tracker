class Snack < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :price

  has_many :vending_machines
  has_many :machines, through: :vending_machines

  def self.average_price
    average(:price)
  end
end
