class PagesController < ApplicationController
  def home
    redirect_to dashboard_path if current_user
  end

  def dashboard
    #@bookings = current_user.bookings
    @products = current_user.products
  end
end
