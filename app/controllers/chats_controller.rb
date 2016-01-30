class ChatsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    return redirect_to '/1' if params[:id].nil?
    @comments = Chat.all
    @comment = Chat.new
    @accounts = Useraccount.all
    @groups = Group.all
    @group = Group.find(params[:id])
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
    redirect_to action: 'index' unless useraccount_signed_in?
  end
end
