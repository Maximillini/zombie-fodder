Rails.application.routes.draw do
  get "/" => "welcome#index"
  resources :games do
    resources :parties , only: [:update] do
      resources :players, only: [:create, :update, :destroy]
    end
  end

  resources :game_masters, only: [:create, :new, :show]

  root "welcome#index"

#################################

  get "login" => "sessions#new"
  post "login" => "sessions#create"

#################################

end
