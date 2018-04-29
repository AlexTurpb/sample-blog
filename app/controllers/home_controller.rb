class HomeController < ApplicationController
  
  def index
    render plain: params[:contacts].inspect
  end
    
end 