class ApplicationController < ActionController::Base

  before_action :fetch_user #before any action by any controller is done, run fetch_user

  private

    def fetch_user
      if session[:user_id].present?  #check session hash, if a user_id is present
        @current_user = User.find_by :id=>session[:user_id]  #set current_user

        session[:user_id] = nil unless @current_user  #clear session user_id if no user found
      end
    end


    def authorize_user
      redirect_to login_path unless @current_user.present?
    end
  end
