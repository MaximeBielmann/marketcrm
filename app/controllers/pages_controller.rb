class PagesController < ApplicationController
  def home
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
  
  def admin
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    
    @brands = Brand.all.reverse
    @persons = People.all.reverse
  end
  
  def market
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @brands = Brand.where("brand_market_sign" == true)
  end
end
