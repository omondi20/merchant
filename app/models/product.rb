class Product < ApplicationRecord
  has_many :product_items

validates_numericality_of :price

  end
