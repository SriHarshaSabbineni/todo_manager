class HomeController < ApplicationController
  def index
    render plain: "this is the home page"
  end
end
