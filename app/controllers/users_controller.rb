class UsersController < ApplicationController
  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      redirect_to :back, flash: {
        user: user,
        error_messages: user.errors.full_messages
      }
    end
  end

  def show
      @user = User.find(params[:id])
      @likes = Like.where(user_id: @user.id)
  end

private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :email)
  end
end
