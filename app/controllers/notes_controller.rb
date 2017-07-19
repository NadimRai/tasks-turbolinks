class NotesController < ApplicationController
	def index
		@notes = Note.all 
	end

	def show
		@note = Note.find(params[:id])
	end

	def destroy
		@note = Note.find(params[:id])
		@note.destroy
		redirect_to notes_url 
	end
end
