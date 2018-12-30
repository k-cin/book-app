# frozen_string_literal: true

require 'httparty'

class Book
  include HTTParty

  base_uri 'https://www.googleapis.com/books/v1/volumes'

  format :json

  def self.about(term)
    cleaned_up_term = term.gsub /\s+/, '+'
    get('', query: { q: "intitle:#{cleaned_up_term}", maxResults: '4', printType: 'books' })['items'] || []
  end

  def self.image
    response = get('', query: { q: "intitle:'Star+Wars'", orderBy: 'relevance', maxResults: '5', printType: 'books' })['items'] || []
    images = []
    response.each do |x|
      images << x['volumeInfo']['imageLinks']['thumbnail']
    end
    images
  end

  def self.magic_the_gathering(name)
    cleaned_up_name = name.gsub /\s+/, ' '
    response = get('https://api.magicthegathering.io/v1/cards', query: { name: cleaned_up_name.to_s })['cards'] || []
    images = []
    response.each do |card|
      images << card['imageUrl']
    end
    images
  end
end
