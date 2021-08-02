class GossipController < ApplicationController
  def index
    @gossip_numb = params[:id]
    @gossip = Gossip.all
    @person = User.all
  end
end
