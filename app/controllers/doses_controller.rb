class DosesController < ApplicationController
  before_action :find_dose, only: [:create]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredient = Ingredient.all
  end

  def create


  end


  def edit
  end

  def update
    @dose.update(params[:dose])
  end

  def destroy
    @dose.delete
  end

  private

  def find_dose
    @dose = Dose.find(params[:id])
  end
end

# :edit, :update, :destroy]
