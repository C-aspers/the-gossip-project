class WelcomeController < ApplicationController
  def index
    @user_first_name = params[:id]
  end
end
