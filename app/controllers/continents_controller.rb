class ContinentsController < ApplicationController
  def index
    @continents = Continent.all
  end

  def show
    @continent = Continent.find params[:id]
  end

  def edit
    @continent = Continent.find params[:id]

  end

  def update
    @continent = Continent.find params[:id]
    @continent.update continent_params

    redirect_to continent_path(@continent.id)

  end


  private

  def continent_params
    params.require(:continent).permit(:area, :population, :image)

  end
end
