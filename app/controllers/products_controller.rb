class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]
    @product.img_url = params[:product][:img_url]

    if @product.save
      redirect_to products_url
    else
      redirect_to new_product_url
    end
  end

  def edit
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to(products_path)
  end

end
