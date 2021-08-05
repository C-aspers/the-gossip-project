class GossipController < ApplicationController
  def index

    @gossip = Gossip.all
  end 

  def show  
    id = params[:id]
    @gossip_number = params[:id]
    first_gossip = Gossip.first.id

    @gossip = Gossip.find(first_gossip + id.to_i)
    user_identification = @gossip.user_id
    @user = User.find(user_identification) 

    city_user = @user.city_id
    @city = City.find(city_user) 
  end 

  def new
  end

  def create
    puts "#{params}".magenta
    @gossip = Gossip.new(gossip_params) 

    if @gossip.save 
     puts "On a réussi".green
      redirect_to home_path

    else
     puts "ceci est un echec".red
      render 'new'
    end
  end
  

  def edit
    @gossip = Gossip.find(params[id])
  end

  def update
    @gossip = Gossip.find(params[id])
    @gossip.update(params[:gossip])
  end

  def destroy
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content, :user_id)
  end

end
