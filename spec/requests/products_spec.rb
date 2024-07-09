# frozen_string_literal: true

require "rails_helper"

RSpec.describe ProductsController, type: :controller do
  describe "GET /" do
    it 'should render success' do
      expect(Rails.logger).to receive(:info).exactly(2).times
      controller.send(:home)
    end
  end

  describe "GET /show" do
    it 'should render success' do
      expect(Product).to receive(:get).and_return(Product.new)
      expect(Rails.logger).to receive(:info).exactly(1).times
      expect(response).to have_http_status(:success)
      controller.send(:show)
    end
  end

  describe "GET /checkout" do
    # it 'should render success' do
    #   product = Product.new
    #   product.price = 10
    #   expect(Rails.logger).to receive(:info).exactly(1).times
    #   expect(Product).to receive(:get).and_return(product)
    #   session[:percent] = 10
    #   expect(response).to render_template "checkout"
    #   controller.send(:checkout)
    #   expect(session[:cart_amount]).to eq(11)
    #   session.delete(:percent)
    # end
  end
end
