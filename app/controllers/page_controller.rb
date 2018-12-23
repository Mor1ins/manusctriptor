class PageController < ApplicationController
  def index; end
end


class CompileController < ActionController::API
  require 'tilt/kramdown'

  def pdf
    File.open(dir.join('notes.pdf'), 'wb') do |f|
      send_file f, filename: 'notes.pdf'
    end
  end

  def compile
    text = params['text'].nil? ? '\n' : params['text']
    pdf = Kramdown::Document.new(text, input: 'kramdown').to_pdf
    dir = Rails.root.join('public', 'notes')
    Dir.mkdir(dir) unless Dir.exist?(dir)
    File.open(dir.join('notes.pdf'), 'wb') {|file| file.write(pdf)}
  end
end
#
