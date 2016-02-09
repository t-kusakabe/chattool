class ChatsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    # binding.pry
    return redirect_to "/#{params[:id]}" if params[:id].present?
    @comments = Chat.all.where(opponent: params[:id])
    @comment = Chat.new
    @accounts = Useraccount.all
    @groups = Group.all
    @group = Group.find(params[:id]) if params[:id].present?
  end

  def create
    Chat.create(comment: comment_params[:comment], contributor: current_useraccount.id, opponent: params[:opponent])
    @comments = Chat.all.where(opponent: params[:opponent])
  end

  def destroy
    post = Chat.find(params[:id])
    Chat.find(params[:id]).destroy
    @comments = Chat.all.where(opponent: post.opponent)
  end

  private
  def comment_params
    params.require(:chat).permit(:comment)
  end

  def move_to_index
    redirect_to action: 'index' unless useraccount_signed_in?
  end

  
end
