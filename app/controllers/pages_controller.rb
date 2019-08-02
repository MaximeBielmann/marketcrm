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
    @brands = Brand.where(brand_status: 'Validé').order('brand_title')
  end
  
  def maxime
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @notes = Note.includes(:brand).where("brand_market_coach = 'Maxime'").references(:brand).order('note_datetime')
  end
  
  def seva
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @notes = Note.includes(:brand).where("brand_market_coach = 'Seva'").references(:brand).order('note_datetime')
  end
end
