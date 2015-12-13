class DmsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @comments = Dm.all
    @comment = Dm.new
    @accounts = Useraccount.all
  end

  def create
    Dm.create(comment: comment_params[:comment], contributor: current_useraccount.id)
    @comments = Dm.all
  end

  def destroy
    Dm.find(params[:id]).destroy
    @comments = Dm.all
  end

  private
  def comment_params
    params.require(:dm).permit(:comment)
  end

  def move_to_index
    redirect_to action: :index unless useraccount_signed_in?
  end
end
