# frozen_string_literal: true

require "rails_helper"

RSpec.describe Product, type: :model do
  describe "validate get_products_by_category" do
    it "should return exact number provided as parameter" do
      allow(Product).to receive_message_chain(:where, :limit).and_return(20)
      expect(Product.get_products_by_category(1, 20)).to eq(20)
    end

    it "should not return more than default limit when 5 objects present in db" do
      allow(Product).to receive_message_chain(:where, :limit).and_return(5)
      expect(Product.get_products_by_category(1)).to eq(5)
    end

    it "should not return more than default limit when less objects present in db" do
      allow(Product).to receive_message_chain(:where, :limit).and_return(3)
      expect(Product.get_products_by_category(1)).to eq(3)
    end
  end

  describe "validate get" do
    it "should return product for available id" do
      product = Product.new
      product.id = 1
      allow(Product).to receive(:find_by).and_return(product)
      expect(Product.get(1).id).to eq(product.id)
    end

    it "should return nil when object is not present" do
      allow(Product).to receive(:find_by).and_return(nil)
      expect(Product.get(1)).to eq(nil)
    end
  end

  describe "validate average_rating" do
    it "should return proper average rating" do
      product = Product.new
      product.id = 1
      review1 = Review.new
      review1.rating = 4
      review2 = Review.new
      review2.rating = 3
      review3 = Review.new
      review3.rating = 5
      product.reviews = [review1, review2, review3]
      allow(product.reviews).to receive(:average).and_return(4)
      expect(product.average_rating).to eq(4)
    end

    it "should return 0 when no review available" do
      product = Product.new
      product.id = 1
      product.reviews = []
      allow(product.reviews).to receive(:average).and_return(0)
      expect(product.average_rating).to eq(0)
    end
  end

  describe "validate calculate_tip" do
    it "should return proper price when percentage is 10" do
      product = Product.new
      product.price = 10
      expect(product.calculate_tip(10)).to eq(11)
    end

    it "should return proper price when percentage is 20" do
      product = Product.new
      product.price = 10
      expect(product.calculate_tip(20)).to eq(12)
    end

    it "should return proper price when percentage is 0" do
      product = Product.new
      product.price = 10
      expect(product.calculate_tip(0)).to eq(10)
    end
  end
end
