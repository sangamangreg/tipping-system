# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :clear_session, except: %i[checkout success]

  STAFF_PICKS_CATEGORY_ID = 1
  def home
    Rails.logger.info("Loading home page")
    @staff_picks = Product.get_products_by_category(STAFF_PICKS_CATEGORY_ID)
    Rails.logger.info("Home page staff picks completed")
  end

  def show
    Rails.logger.info("product details page started with param #{params[:id]}")
    @product = Product.get(params[:id]) or not_found
  end

  def prepare
    Rails.logger.info("preparing for checkout page")
    @product = Product.get(params[:id]) or not_found
    session[:product] = params[:id]
    session[:percent] = params[:percent] if params[:percent]
    Rails.logger.info("redirecting to checkout page")
    redirect_to action: :checkout
  end

  def checkout
    Rails.logger.info("rendering checkout page")
    @product = Product.get(session[:product]) or not_found
    percent = session[:percent].to_i if session[:percent]
    tip = @product.calculate_tip(percent)
    session[:cart_amount] = tip
    render "checkout", locals: { percent: percent, tip: tip }
  end

  def success
    @price = session[:cart_amount]
  end
end
