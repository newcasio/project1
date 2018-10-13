class ConflictsController < ApplicationController
  def new
    @conflict = Conflict.new
  end

  def create
    Conflict.create conflict_params
    redirect_to conflicts_path
  end

  def index
    @conflicts = Conflict.all
  end

  def show
    @conflict = Conflict.find(params[:id])
  end

  def edit
    @conflict = Conflict.find(params[:id])

  end

  def update
    conflict = Conflict.find(params[:id])
    conflict.update conflict_params
    redirect_to conflict_path(conflict.id)

  end

  def destroy
    conflict = Conflict.find(params[:id])
    conflict.destroy
    redirect_to conflicts_path
  end

  private
  def conflict_params
    params.require(:conflict).permit(:name, :country, :conflict_type, :description, :parties, :image)


  end
end
