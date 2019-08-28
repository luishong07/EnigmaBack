Rails.application.routes.draw do
  resources :user_messages
  resources :messages

  # resources :users

  # get "/messages", to: "messages#index"

  # get "/messages/:id", to: "messages#show"

  # get "/messages/new", to: "messages#new"

  # post "/messages", to: "messages#create"

  # get "/messages/:id/edit", to: "messages#edit"

  # put "/messages/:id", to: "messages#update"

  # delete "/messages/:id", to: "messages#destroy"




  get "/users", to: "users#index"

  get "/users/:id", to: "users#show"

  get "/users/new", to: "users#new"

  post "/users", to: "users#create"

  get "/users/:id/edit", to: "users#edit"

  put "/users/:id", to: "users#update"

  delete "/users/:id", to: "users#destroy"
  

  post '/login', to: 'users#authenticate'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
