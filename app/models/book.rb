require 'httparty'

class Book 
    include HTTParty

    base_uri "https://www.googleapis.com/books/v1/volumes"

    format :json

    def self.about term
        cleaned_up_term = term.gsub /\s+/, '+'
        get("", query: { q: "intitle:#{cleaned_up_term}", maxResults: "4", printType: "books"})["items"] || []
    end
    
    def self.image
        response = get("", query: { q: "intitle:'Star+Wars'", orderBy: "relevance", maxResults: "5", printType: "books"})["items"] || []
        images = []
        response.each do |x|
            images << x['volumeInfo']['imageLinks']['thumbnail']
        end
        images
    end
end

