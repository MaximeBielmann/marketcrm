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
    
    @brands = Brand.all.order('id').reverse
    @persons = People.all.order('id').reverse
    
    @maxime = Brand.where(brand_coach: 'Maxime').size
    @seva = Brand.where(brand_coach: 'Seva').size
  end
  
  def market
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @brands = Brand.where(brand_status: 'Validé').order('brand_title')
  end
  
  def maxime
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @notes = Note.includes(:brand).where("brand_market_coach = 'Maxime'", "brand_market_sign = 'true'").references(:brand).order('brand_id')
  end
  
  def seva
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @notes = Note.includes(:brand).where("brand_market_coach = 'Seva'").references(:brand).order('brand_id')
  end
end
