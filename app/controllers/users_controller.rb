class UsersController < ApplicationController
  before_action :user_login?
  def show
    @user = User.find(params[:id])
  end
end
