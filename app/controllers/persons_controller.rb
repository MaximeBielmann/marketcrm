class PersonsController < ApplicationController
  def index
    @persons = People.all
  end
  
  def create
    People.create first_name: params[:first_name], last_name: params[:last_name], person_mail: params[:person_mail], person_phone: params[:person_phone], person_website: params[:person_website], person_facebook: params[:person_facebook], person_twitter: params[:person_twitter], person_instagram: params[:person_instagram]
    redirect_to '/persons'
  end

  def show
    @person = People.find(params[:id])
    @members = Member.where(people_id: params[:id])
    @notes = Note.where(people_id: params[:id]).order('note_datetime desc')
  end
  
  def change
    @person = People.find(params[:id])
  end
  
  def update
    People.update(params[:id], first_name: params[:first_name], last_name: params[:last_name], person_mail: params[:person_mail], person_phone: params[:person_phone], person_website: params[:person_website], person_facebook: params[:person_facebook], person_twitter: params[:person_twitter], person_instagram: params[:person_instagram])
    redirect_to "/persons/#{params[:id]}"
  end

  def delete
    People.find(params[:id]).destroy
    redirect_to '/persons'
  end
end
