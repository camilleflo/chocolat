class RecettesController < ApplicationController
  def index
    @recettes = Recette.all
  end

  def show
    @recette = Recette.find(params[:id])
    @ingredient = Ingredient.new
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @recette = Recette.new
  end

  def create
    @recette = Recette.new(recette_params)
    if @recette.save
      redirect_to recette_path(@recette)
    else
      render "new"
    end
  end

  private

  def recette_params
    params.require(:recette).permit(:name)
  end
end
