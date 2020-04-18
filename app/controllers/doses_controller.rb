class DosesController < ApplicationController
  def create
    @recette = Recette.find(params[:recette_id])
    @dose = Dose.new(dose_params)
    @dose.recette = @recette
    if @dose.save
      redirect_to recette_path(@recette)
    else
      @review = Review.new
      render "recettes/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to recette_path(@dose.recette)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
