class NotesController < ApplicationController
    def create
        Note.create brand_id: params[:id], people_id: params[:people_id], note_datetime: DateTime.now, note_content: params[:note_content]
        redirect_to "/brands/#{params[:id]}"
    end
    
    def delete
        Note.find(params[:id]).destroy
        redirect_to(:back)
    end
end
