Rails.application.routes.draw do
  get 'invoker/create'

  resource :invoker, only: %i[new create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
