# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    # Remember - params[:looking_for] doesn't exist so set to 'Djinn'
    @search_term = params[:looking_for] || 'Djinn'
    @books = Book.about(@search_term)
    @images = Book.image
    @magic_images = Book.magic_the_gathering(@search_term)
  end
  # def images
  #   @magic_images = Book.magic_the_gathering "Djinn"
  # end
end
