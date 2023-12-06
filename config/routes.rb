Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :static_pages, only: [:index, :get]
  root "static_pages#index"
end
