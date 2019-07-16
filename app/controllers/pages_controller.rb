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
    
    @brands = Brand.all
    @persons = People.all
  end
end
