class CommentsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @comment = Comment.new
  end

  def create
    if params[:comment].present?  #something entered in comments section
      @current_comment = Comment.create comment: params[:comment]
      @current_comment.user_id = @current_user.id  #assign the id from @current_user to new comment (@current_comment)
      @current_comment.save

      if @current_comment.persisted?  #if above if statement completed. ie if comment present and then saved
        @conflict = Conflict.find params[:conflict_id].to_i  #find the conflict using its conflict_id
        @current_user.comments << @current_comment    #user to comment association
        @conflict.comments << @current_comment #conflict to comment association
        @conflict.save
        @current_user.save
        redirect_to conflict_path(@conflict.id)
      end
    else
      @conflict = Conflict.find params[:conflict_id].to_i
      flash[:error] = 'Comments field cannot be empty.'
      puts flash[:error]

      redirect_to conflict_path(@conflict.id)
    end
  end

  def edit
    @comment = Comment.find params[:id]
    unless @comment.user == @current_user  #check if user id associated with comment, is the same as the currnet user
      flash[:error] = "You must be the owner of this comment to edit."
      redirect_to conflict_path(@comment.conflict_id)
    end

  end

  def update
    @comment = Comment.find params[:id]  #find comment
    @comment.update comment:params[:comment][:comment ]  #actual comment is a hash within a hash
    redirect_to conflict_path(@comment.conflict_id)

  end

  def destroy
    @comment = Comment.find params[:id]
    unless @comment.user == @current_user
      flash[:error] = "You must be the owner of this comment to delete."
      redirect_to conflict_path(@comment.conflict_id)
      return
    end
    @comment.destroy
    redirect_to conflict_path(@comment.conflict_id)
  end
end
