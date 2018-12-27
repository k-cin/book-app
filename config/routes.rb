Rails.application.routes.draw do
  get 'greeter/hello'
  get 'greeter/goodbye' => 'greeter#goodbye'
  get 'books/images' => 'books#images'
  get 'books/index'
  
  root 'books#index'
  resources :entries, defaults: { format: 'json' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
