class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end
  
  def create
    Brand.create brand_title: params[:brand_title], brand_desc: params[:brand_desc], brand_status: params[:brand_status], brand_mail: params[:brand_mail], brand_phone: params[:brand_phone], brand_website: params[:brand_website], brand_facebook: params[:brand_facebook], brand_twitter: params[:brand_twitter], brand_instagram: params[:brand_instagram]
    redirect_to '/brands'
  end

  def show
    @brand = Brand.find(params[:id])
    @members = Member.where(brand_id: params[:id])
    @notes = Note.where(brand_id: params[:id]).order('note_datetime desc')
  end
  
  def change
    @brand = Brand.find(params[:id])
  end
  
  def update
    Brand.update(params[:id], brand_title: params[:brand_title], brand_desc: params[:brand_desc], brand_status: params[:brand_status], brand_mail: params[:brand_mail], brand_phone: params[:brand_phone], brand_website: params[:brand_website], brand_facebook: params[:brand_facebook], brand_twitter: params[:brand_twitter], brand_instagram: params[:brand_instagram])
    redirect_to "/brands/#{params[:id]}"
  end

  def delete
    Brand.find(params[:id]).destroy
    redirect_to '/brands'
  end
end
