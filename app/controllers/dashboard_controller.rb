class DashboardController < ApplicationController
  before_action :authenticate_user, only: [:index]

  def index
    @user = current_user
    id = @user[:id]
    @user = User.find(id) 
    usr_city = @user.city_id
    @city = City.find(usr_city)  
  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
end
