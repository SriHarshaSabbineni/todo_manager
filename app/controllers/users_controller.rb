class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.map { |user| user.display_user }.join("\n")
  end

  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    user = User.create!(name: name, email: email, password: password)
    render plain: "user created with id: #{user.id}"
  end

  def login
    user = User.where("email = ? and password = ?", params[:email], params[:password])
    if user == []
      render plain: false
    else
      render plain: true
    end
  end
end
