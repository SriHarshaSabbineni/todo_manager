class SessionsController < ApplicationController
  def new
    #renders new.html.erb by default
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render plain: "logged in successfully!"
    else
      render plain: "You have entered incorrect password."
    end
  end
end
