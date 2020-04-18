class ReviewsController < ApplicationController
  def create
    @recette = Recette.find(params[:recette_id])
    @review = Review.new(review_params)
    @review.recette = @recette
    if @review.save
      redirect_to recette_path(@recette)
    else
      @dose = Dose.new
      render "recettes/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
