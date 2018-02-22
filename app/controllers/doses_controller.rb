class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def show
    @doses = Do
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = params[:cocktail_id]
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail), notice: 'Dose was successfully created.'
    else
      render :new, notice: "your dose wasn't saved."
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:amount, :ingredient_id, :description, :cocktail_id)
  end
end
