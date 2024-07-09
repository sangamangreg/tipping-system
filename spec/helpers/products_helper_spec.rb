# frozen_string_literal: true

require "rails_helper"

RSpec.describe ProductsHelper, type: :helper do
  describe "validate currency_symbol" do
    it "should return usd symbol default" do
      expect(ProductsHelper.currency_symbol).to eq("$")
    end

    it "should return inr symbol default" do
      expect(ProductsHelper.currency_symbol("INR")).to eq("₹")
    end

    it "should return china symbol default" do
      expect(ProductsHelper.currency_symbol("CHN")).to eq("$")
    end
  end
end
