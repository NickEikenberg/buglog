class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
    @projects = Project.where(user_id: @user.id)
    @bugs = Bug.where(user_id: @user.id)
    @assigned = Bug.where(assigned_to: @user.id)
  end
end