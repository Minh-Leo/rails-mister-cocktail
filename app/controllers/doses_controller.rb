# frozen_string_literal: true

class DosesController < ApplicationController
  before_action :set_cocktail, only: %i[new create edit update]
  before_action :set_dose, only: %i[edit update destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    # you forgot this, thats why its not working
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit; end

  def update
    @dose.update(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :edit
    end
  end

  def destroy
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

# edit_dose GET    /doses/:id/edit(.:format)               doses#edit
#  dose PATCH  /doses/:id(.:format)                                                                     doses#update
#       PUT    /doses/:id(.:format)                                                                     doses#update
#       DELETE /doses/:id(.:format)
