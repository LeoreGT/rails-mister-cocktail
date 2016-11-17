class CocktailsController < ApplicationController

  before_action :find_cocktail, only: [:show, :update]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @doses = @cocktail.doses
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(strong_params)
    if @cocktail.save
     redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def strong_params
    params.require(:cocktail).permit(:name, :doses)
  end

end
