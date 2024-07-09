# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def not_found
    Rails.logger.info("404 page shown")
    render file: "#{Rails.root}/public/404.html", status: 404
  end

  def clear_session
    session.delete(:product)
    session.delete(:percent)
    session.delete(:cart_amount)
  end
end
