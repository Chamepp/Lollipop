class PagesController < ApplicationController


  # SignUp
  def signup

  end

  # Create User
  def create
    user = User.new(
      firstname: params[:firstname],
      lastname: params[:lastname],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )

    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully Created The User ..."
      redirect_to home_path

    else
      flash[:warning] = "Invalid Email or Password"
      redirect_to signup_path
    end
  end

  # AboutUs Page
  def about

  end

end
