class HomeController < ApplicationController
  def index
    if user_signed_in?
      @user = User.find_by_id(current_user.id)
      @projects = Project.where(user_id: @user.id)
    else
      nil
    end
    
  end
end
