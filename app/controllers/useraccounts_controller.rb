class UseraccountsController < ApplicationController
  def show
    @account = Useraccount.find(current_useraccount.id)
  end

  def edit
    @account = Useraccount.find(current_useraccount.id)
  end
end
