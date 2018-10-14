class UsersController < ApplicationController

  before_action :authorize_user, :except => [:index]

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to users_path
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
