class CommentsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @comment = Comment.new
  end

  def create
    if params[:comment].present?
      @current_comment = Comment.create comment: params[:comment]
      @current_comment.user_id = @current_user.id  #assign the id from @current_user to new var
      @current_comment.save

      if @current_comment.persisted?
        @conflict = Conflict.find params[:conflict_id].to_i
        @current_user.comments << @current_comment    #user to comment association
        @conflict.comments << @current_comment #conflict to comment association
        @conflict.save
        @current_user.save

        redirect_to conflict_path(@conflict.id)
      end
    else
      puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
      puts 'comment field empty'
      @conflict = Conflict.find params[:conflict_id].to_i
      flash[:error] = 'Comments field cannot be empty.'
      puts flash[:error]
      redirect_to conflict_path(@conflict.id)
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
