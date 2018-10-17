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
    @comment = Comment.find params[:id]
    unless @comment.user == @current_user
      puts ")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))"
      flash[:error] = "You must be the owner of this comment to edit."
      redirect_to conflict_path(@comment.conflict_id)
    end

  end

  def update
    @comment = Comment.find params[:id]
    @comment.update comment:params[:comment][:comment ]
    redirect_to conflict_path(@comment.conflict_id)

  end

  def destroy
    @comment = Comment.find params[:id]
    puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    unless @comment.user == @current_user
      puts ")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))"
      flash[:error] = "You must be the owner of this comment to delete."
      redirect_to conflict_path(@comment.conflict_id)
      return
    end
    @comment.destroy
    redirect_to conflict_path(@comment.conflict_id)
  end
end
