class BookingsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path(@product), notice: "Booking created!!"
    else
      render "products/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end


