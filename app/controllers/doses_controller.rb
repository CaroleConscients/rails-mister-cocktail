class DosesController < ApplicationController
  before_action :find_dose, only: [:create, :edit, :update, :destroy]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredient = Ingredient.all
  end

  def create
    #@dose = Dose.new(dose_params)
    # @dose.cocktail
  end


  def edit
  end

  def update
    @dose.update(params[:id])
  end

  def destroy
    @dose.delete
  end

  private

  def find_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, )
  end
end

# livecode find_cocktail et pas dose
