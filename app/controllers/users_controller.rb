 class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.signup_confirmation(@user).deliver
      session[:user_id] = @user.id
      flash[:notice] = "User Created"
      redirect_to root_url , notice: "Thanks for signing up!"
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
