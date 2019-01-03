# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    # If params[:looking_for] exists use that, otherwise 'Djinn'
    @search_term = params[:looking_for] || 'Djinn'
    @books = Book.about(@search_term)
    @images = Book.image
    @magic_images = Book.magic_the_gathering(@search_term)
  end
  # def images
  #   @magic_images = Book.magic_the_gathering "Djinn"
  # end
  def map_isbn(books)
    # TODO - 
  end
  def sort_books(books) 
    # TODO - sort the books
  end
end
