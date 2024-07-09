# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :user
  has_many :reviews

  def self.get_products_by_category(category, limit = 5)
    Product.where(category_id: category).limit(limit)
  end

  def self.get(id)
    Product.find_by(id: id)
  end

  def average_rating
    reviews.average(:rating).to_i
  end

  def calculate_tip(percent)
    price + ((price * percent) / 100).round(2)
  rescue StandardError
    price
  end
end
