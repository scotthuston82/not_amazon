class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    @review.comment = params[:review][:comment]

    if @review.save
      flash[:notice] = "Successfully submitted comment!"
      redirect_to product_path(@product)
    else
      render 'products/show'
    end
  end


end
