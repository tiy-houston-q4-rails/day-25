class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:username]
    password = params[:password]
    # do whatever da fuck

    # do we have a user with that username and password

    user = User.find_by username: username
    if user.password == password
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def signout
    session[:user_id] = nil
    redirect_to root_path
  end
end
