class MembersController < ApplicationController
  def create
    Member.create brand_id: params[:brand_id], people_id: params[:people_id], member_role: params[:member_role]
  end
end
