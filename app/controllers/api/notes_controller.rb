class NotesController < ApplicationController
  def index
    notes = Note.all 
    render json: NoteSerializer.new(notes).serialized_json
  end
  def show
    note = Note.find(params[:id])
    render json: NoteSerializer.new(note).serialized_json
  end
  def create
    note = Note.new(note_params)
    if note.save
      render json: NoteSerializer.new(note).serialized_json
    else
      render json: {error: note.errors.messages}, status: 422
    end
  end

  def update
    note = Note.find(params[:id])
    if note.update(note_params)
      render json: NoteSerializer.new(note).serialized_json
    else
      render json: {error: note.errors.messages}, status: 422
    end
  end

  def destroy
    note = Note.find(params[:id])
    if note.destroy
      head :no_content
    else
      render json: {error: note.errors.messages}, status: 422
    end
  end

  private
  def note_params
    params.require(:note).permit(:title, :description)
  end
end
