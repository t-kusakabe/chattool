class ChatsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @comments = Chat.all
    @comment = Chat.new
    @accounts = Useraccount.all
  end

  def create
    Chat.create(comment: comment_params[:comment], contributor: current_useraccount.id)
    @comments = Chat.all
  end

  def destroy
    Chat.find(params[:id]).destroy
    @comments = Chat.all
  end

  private
  def comment_params
    params.require(:chat).permit(:comment)
  end

  def move_to_index
    redirect_to action: :index unless useraccount_signed_in?
  end
end
