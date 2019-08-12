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
    
    @maxime = Brand.where(["brand_market_coach = ? and brand_status = ?", "Maxime", "Validé"]).size
    @seva = Brand.where(["brand_market_coach = ? and brand_status = ?", "Seva", "Validé"]).size
    
    @to_contact = Brand.where(brand_status: 'A contacter').size
    @contacted = Brand.where(brand_status: 'Contacté').size
    @recontacted = Brand.where(brand_status: 'Relancé').size
    @pending = Brand.where(brand_status: 'En cours').size
    @validate = Brand.where(brand_status: 'Validé').size
    @refused = Brand.where(brand_status: 'Refusé').size
    @ban = Brand.where(brand_status: 'Ban').size
  end
  
  def market
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @brands = Brand.where(brand_status: 'Validé').order('brand_title')
    
    @group = Brand.where(brand_group: 'Oui').size
    @market = Brand.where(brand_market_sign: 'true').size
    @stripe = Brand.where(brand_market_paiement: 'true').size
    @ship = Brand.where(brand_market_shipping: 'true').size
    @front = Brand.where(brand_market_frontpage: 'true').size
    @product = Brand.where(brand_market_products: 'true').size
  end
  
  def maxime
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @notes = Note.includes(:brand).where(["brand_market_coach = ? and brand_status = ?", "Maxime", "Validé"]).references(:brand).order('brand_id')
  end
  
  def seva
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @notes = Note.includes(:brand).where(["brand_market_coach = ? and brand_status = ?", "Seva", "Validé"]).references(:brand).order('brand_id')
  end
end
