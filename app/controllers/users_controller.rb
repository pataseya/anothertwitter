class UsersController < ApplicationController

  def index
    @users = User.where.not(username: "pitty")
  end



end
