class ConflictsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]


  def new
    @conflict = Conflict.new
  end

  def create
    @conflict = Conflict.new(conflict_params)
    # cloundinary upload happens here
    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      @conflict.image = response["public_id"]
    end
    @conflict.save
    # Conflict.create conflict_params
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

  def follow
    @current_conflict = Conflict.find(params[:id])  #find current conflict hash

    if @current_user.conflicts.include?(@current_conflict)
      conflict_name = @current_conflict.name
      flash[:message] = "You are already following "+conflict_name+"."
    else
      @current_user.conflicts << @current_conflict
    end


    redirect_to user_path(@current_user.id)
  end


  private
  def conflict_params
    params.require(:conflict).permit(:name, :country, :conflict_type, :description, :parties, :image)


  end
end
