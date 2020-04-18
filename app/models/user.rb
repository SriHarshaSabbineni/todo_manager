class User < ActiveRecord::Base
  def display_user
    "#{id}. #{name} #{email} #{password}"
  end
end
