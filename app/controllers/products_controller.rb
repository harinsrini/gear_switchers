class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products_ski = Product.where(category: "Ski")
    @products_trek = Product.where(category: "Trekking")
    @products_cycle = Product.where(category: "cycling")

    @markers = Product.all.map do |product|
      {
        lat: product.latitude,
        lng: product.longitude
      }
    end
  end
end
