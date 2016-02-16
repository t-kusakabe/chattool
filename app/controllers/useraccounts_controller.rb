class UseraccountsController < ApplicationController

  def show
    @account = Useraccount.find(current_useraccount.id)
  end

  def edit
    @account = Useraccount.find(current_useraccount.id)
  end

  def update
    account = Useraccount.find(current_useraccount.id)
    account.update(update_params)
  end

  private
  def update_params
    params.require(:useraccount).permit(:accountname)
  end
end
