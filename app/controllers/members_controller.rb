class MembersController < ApplicationController
  def create
    Member.create brand_id: params[:brand_id], people_id: params[:people_id], member_role: params[:member_role]
    redirect_to(:back)
  end
  
  def delete
    Member.find(params[:id]).destroy
    redirect_to(:back)
  end
end
