class UserController < ApplicationController
  
  def index
  end

  def show
    id = params[:id]
    @user = User.find(id) 
    usr_city = @user.city_id
    @city = City.find(usr_city)
  end

  def new
  
  end

  def create
    puts "#{params}".magenta
    @user = User.new(user_params) 

    if @user.save 
     puts "On a réussi".green
     session[:success] = "Account created"
      redirect_to home_path

    else
     puts "ceci est un echec".red
      render 'new'
    end
  end
  

  #def edit
  #  @gossip = Gossip.find(params[id])
  #end
#
  #def update
  #  @gossip = Gossip.find(params[id])
  #  @gossip.update(params[:gossip])
  #end
#
  #def destroy
  #end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city_id, :password)
  end

end
