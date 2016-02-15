Rails.application.routes.draw do
  get "/" => "welcome#index"
  
  resources :games, except: [:index] do
    resources :players, only: [:new, :create, :update, :destroy]
  end

  resources :game_masters, except: [:index, :destroy]

  root "welcome#index"

#################################

  get "login" => "sessions#new"
  post "login" => "sessions#create"

  get "logout" => "sessions#destroy"

#################################

end
