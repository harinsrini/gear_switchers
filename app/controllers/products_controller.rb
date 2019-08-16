class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])

  end

  def index
    if params[:query].present?

      @products_ski = Product.where(category: "Ski").search_by_name_and_description(params[:query])
      @products_trek = Product.where(category: "Trekking").search_by_name_and_description(params[:query])
      @products_cycle = Product.where(category: "Cycling").search_by_name_and_description(params[:query])

    else
      @products_ski = Product.where(category: "Ski")
      @products_trek = Product.where(category: "Trekking")
      @products_cycle = Product.where(category: "Cycling")

    end
  end

  def new
    @product = Product.new
    @product.user = current_user
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path # notice :"Restaurant created"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @product.user = current_user
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    @product.user = current_user
    @product.save
    redirect_to products_path # index (single product) page
  end

  def destroy
    @product = Product.find(params[:id])
    @product.user = current_user
    @product.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :category, :price_per_day, :photo, :photo_cache)
  end
end
