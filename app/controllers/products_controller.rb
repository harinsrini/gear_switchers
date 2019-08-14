class ProductsController < ApplicationController
  def index
    @products_ski = Product.where(category: "Ski")
    @products_trek = Product.where(category: "Trekking")
    @products_cycle = Product.where(category: "cycling")
  end
end
