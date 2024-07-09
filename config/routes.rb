# frozen_string_literal: true

Rails.application.routes.draw do
  resources :products

  get "/" => "products#home"
  get "/products/:id" => "products#show"
  get "/prepare-checkout/:id" => "products#prepare"
  get "/checkout" => "products#checkout"
  get "/success" => "products#success"
end
