class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    #code
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the sample app"
      render 'show'
    else
      flash[:error] = "There was a problem  signing up"
      render 'new'
    end
    #code
  end

  private

  def user_params
    params.require(:user).permit(
    :name,
    :email,
    :password,
    :password_confirmation)
    #code
  end


end
