class ChatsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    # binding.pry
    return redirect_to '/1' unless params[:id].present?
    @comments = Chat.all.where(opponent: params[:id])
    @comment = Chat.new
    @accounts = Useraccount.all
    @groups = Group.all
    if params[:id].present?
      Group.create(id: 1, group_name: 'general', description: '全体に共有')
    else
      @group = Group.find(params[:id])
    end
  end

  def create
    Chat.create(comment_params)
    # binding.pry
    @comments = Chat.all.where(opponent: params[:opponent])
  end

  def destroy
    post = Chat.find(params[:id])
    Chat.find(params[:id]).destroy
    @comments = Chat.all.where(opponent: post.opponent)
  end

  private
  def comment_params
    params.require(:chat).permit(:comment).merge(contributor: current_useraccount.id, opponent: params[:opponent])
  end

  def move_to_index
    redirect_to action: 'index' unless useraccount_signed_in?
  end


end
