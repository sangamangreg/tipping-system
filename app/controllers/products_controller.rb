# frozen_string_literal: true

class ProductsController < ApplicationController

  STAFF_PICKS_CATEGORY_ID = 1
  def home
    Rails.logger.info("Loading home page")
    @staff_picks = Product.get_products_by_category(STAFF_PICKS_CATEGORY_ID)
    Rails.logger.info("Home page staff picks completed")
  end
end
