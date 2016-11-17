class DosesController < ApplicationController

  def new
    @doses = Dose.new
  end

  def create
    cocktail = Cocktail.find(params[:cocktail_id])
    @dose = cocktail.doses.build(strong_params)
    if @dose.save
     redirect_to cocktail_path(cocktail)
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(strong_params)
    redirect_to dose_path(@dose)
  end

  private

  def strong_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
