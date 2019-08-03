class BrandsController < ApplicationController
  def index
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    
    @brands = Brand.all.order('brand_title').page(params[:page])
  end
  
  def create
    Brand.create brand_title: params[:brand_title], brand_desc: params[:brand_desc], brand_observation: params[:brand_observation], brand_status: params[:brand_status], brand_mail: params[:brand_mail], brand_phone: params[:brand_phone], brand_website: params[:brand_website], brand_facebook: params[:brand_facebook], brand_twitter: params[:brand_twitter], brand_instagram: params[:brand_instagram], brand_siren: params[:brand_siren], brand_address: params[:brand_address], brand_postal: params[:brand_postal], brand_city: params[:brand_city], brand_juridiq: params[:brand_juridiq], brand_group: params[:brand_group], brand_market_sign: params[:brand_market_sign], brand_market_paiement: params[:brand_market_paiement], brand_market_shipping: params[:brand_market_shipping], brand_market_frontpage: params[:brand_market_frontpage], brand_market_products: params[:brand_market_products]
  end

  def show
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    
    @brand = Brand.find(params[:id])
    @members = Member.where(brand_id: params[:id])
    @notes = Note.where(brand_id: params[:id]).order('note_datetime desc')
  end
  
  def change
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    
    @brand = Brand.find(params[:id])
  end
  
  def update
    Brand.update(params[:id], brand_title: params[:brand_title], brand_desc: params[:brand_desc], brand_observation: params[:brand_observation], brand_status: params[:brand_status], brand_mail: params[:brand_mail], brand_phone: params[:brand_phone], brand_website: params[:brand_website], brand_facebook: params[:brand_facebook], brand_twitter: params[:brand_twitter], brand_instagram: params[:brand_instagram], brand_siren: params[:brand_siren], brand_address: params[:brand_address], brand_postal: params[:brand_postal], brand_city: params[:brand_city], brand_juridiq: params[:brand_juridiq], brand_group: params[:brand_group], brand_market_sign: params[:brand_market_sign], brand_market_paiement: params[:brand_market_paiement], brand_market_shipping: params[:brand_market_shipping], brand_market_frontpage: params[:brand_market_frontpage], brand_market_products: params[:brand_market_products], brand_market_coach: params[:brand_market_coach])
    redirect_to "/brands/#{params[:id]}"
  end

  def delete
    Brand.find(params[:id]).destroy
    redirect_to '/brands'
  end
end
