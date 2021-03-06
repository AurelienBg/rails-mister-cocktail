class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show ]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
    @dose = Dose.new
    @dose.cocktail_id = @cocktail
  end

  def show
    @dose = Dose.new
    @dose.cocktail = @cocktail
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end
end
