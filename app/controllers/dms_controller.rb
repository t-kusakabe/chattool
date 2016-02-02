class DmsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @comments = Dm.where('opponent = ? OR opponent = ?', params[:id], current_useraccount.id).where('contributor = ? OR contributor = ?', params[:id], current_useraccount.id)
    @comment = Dm.new
    @accounts = Useraccount.all
    @account = Useraccount.find(params[:id])
    @groups = Group.all    
  end

  def create
    Dm.create(comment: comment_params[:comment], contributor: current_useraccount.id, opponent: params[:opponent])
    @comments = Dm.where('opponent = ? OR opponent = ?', params[:opponent], current_useraccount.id).where('contributor = ? OR contributor = ?', params[:opponent], current_useraccount.id)
  end

  def destroy
    comment = Dm.find(params[:id])
    Dm.find(params[:id]).destroy
    @comments = Dm.where('opponent = ? OR opponent = ?', comment.opponent, current_useraccount).where('contributor = ? OR contributor = ?', comment.opponent, current_useraccount)
  end

  private
  def comment_params
    params.require(:dm).permit(:comment)
  end

  def move_to_index
    redirect_to action: :index unless useraccount_signed_in?
  end
end
