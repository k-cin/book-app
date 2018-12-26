Rails.application.routes.draw do
  get 'greeter/hello'
  get 'greeter/goodbye' => 'greeter#goodbye'

  get 'books/index'
  
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
