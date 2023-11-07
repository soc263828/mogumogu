class Public::UsersController < ApplicationController
  def show
  end

  def edit
  end

  def quit
  end

  def favorites
  end

  def bookmarks
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end
end

