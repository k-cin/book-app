class BooksController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'Djinn'
    @books = Book.about(@search_term)
    @images = Book.image
    @magic_images = Book.magic_the_gathering(@search_term)
  end
  # def images 
  #   @magic_images = Book.magic_the_gathering "Djinn"
  # end
end
