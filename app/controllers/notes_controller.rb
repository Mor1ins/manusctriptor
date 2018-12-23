# frozen_string_literal: true

class NotesController < ApplicationController
  def new
    @note = Note.new
    render 'notes/new'
  end

  def create
    @note = Note.create(notes_params)
    if @note.valid?
      redirect_to root_path
    else
      render :new
    end
  end

  def delete; end

  def edit
    @note = Note.create(params['note_id'])
    pdf = Kramdown::Document.new(text, input: 'kramdown').to_pdf
    dir = Rails.root.join('public', 'notes')
    Dir.mkdir(dir) unless Dir.exist?(dir)
    File.open(dir.join('notes.pdf'), 'wb') { |file| file.write(pdf) }
    render json: { 'pdf': pdf }
  end
  private

  def notes_params
    params.require(:notes).permit(:name, :markup, :is_mobile_friendly)
  end
end
