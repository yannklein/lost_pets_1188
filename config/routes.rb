Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # I can see all found pets
  get 'pets', to: 'pets#index', as: 'pets'
  # I can add a pet I found
  get 'pets/new', to: 'pets#new', as: 'new_pet'
  # I can see details about one found pet
  get 'pets/:id', to: 'pets#show', as: 'pet'
  # I can add a pet I found
  post 'pets', to: 'pets#create'
  # I can update a pet
  get 'pets/:id/edit', to: 'pets#edit', as: 'edit_pet'
  patch 'pets/:id', to: 'pets#update'
  # I can delete a pet
  
end
