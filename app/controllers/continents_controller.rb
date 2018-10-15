class ContinentsController < ApplicationController

  #run this for all except index and show.  Check if a user has logged in from application controller.  Not logged in users can still browse the continents and individual continents
  before_action :check_if_logged_in, except: [:index, :show]


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
