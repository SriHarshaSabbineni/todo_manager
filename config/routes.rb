Rails.application.routes.draw do



  #get "todos", to: "todos#index"



  #post "todos", to: "todos#create"



  #get "todos/:id", to: "todos#show"



  get "/home", to: "home#index"



  get "/", to: "home#index"



  resources :todos



  resources :users



  get "/signin" => "sessions#new", as: :new_sessions



  post "/signin" => "sessions#create", as: :sessions

end
