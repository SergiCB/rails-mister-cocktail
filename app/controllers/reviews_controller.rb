class ReviewsController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.cocktail = Cocktail.find(params[:cocktail_id])
    if @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @cocktail = Cocktail.find(@review.cocktail_id)
    @review.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def review_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:review).permit(:content)
  end
end
