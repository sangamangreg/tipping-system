# frozen_string_literal: true

module ProductsHelper
  def self.currency_symbol(currency = "USD")
    return "₹" if currency == "INR"

    "$"
  end
end
