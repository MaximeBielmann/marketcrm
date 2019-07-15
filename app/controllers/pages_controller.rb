class PagesController < ApplicationController
  def home
  end
  
  def admin
    @brands = Brand.all
    @persons = People.all
  end
end
