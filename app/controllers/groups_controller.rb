class GroupsController < ApplicationController
  
  def new
    @accounts = Useraccount.all
    @groups = Group.all
    @group = Group.new
  end

  def create
    # binding.pry
    @accounts = Useraccount.all
    @groups = Group.all
    Group.create(group_params)
    return redirect_to controller: 'chats', action: 'index'
  end

private
  def group_params
    params.require(:group).permit(:group_name)
  end

end
