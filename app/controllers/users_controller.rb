class UsersController < ApplicationController
  def edit
    p "edit is called"
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end
end
