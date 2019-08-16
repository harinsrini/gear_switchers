class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
  end
end
