class UsersController < ApplicationController

  # GET /users 
  def index
    @users = User.search(params)
  end
end
