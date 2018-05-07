class LandingpageController < ApplicationController
 def index
  end
  def create
   render plain: params[:landingpage].inspect
  end
end
