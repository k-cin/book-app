class BooksController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'world of warcraft'
    @books = Book.about(@search_term)
    @images = Book.image
  end
end
