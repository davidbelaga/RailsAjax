class GossipsController < ApplicationController


  def new
    @gossip = Gossip.new

  end

  def create
    @gossip = Gossip.create(gossip_params)
    if @gossip.save
      flash["success"] = "Gossip created"
      respond_to do |format|
        format.html { redirect_to gossips_url }
        format.js   ## cela va rendre create.js.erb
     end
    # redirect_to gossips_path  # old version
    else
      flash["danger"] = "Your gossip has not been created"
    end
  end

  def index
    @gossips = Gossip.all
  end

private

  def gossip_params
    params.permit(:title, :body)
  end
end
