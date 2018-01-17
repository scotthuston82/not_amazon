class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to(products_path)
  end

end
