Rails.application.routes.draw do
  get "/" => "welcome#index"
  resources :games do
    resources :parties , only: [:new, :create, :update] do
      resources :players, only: [:new, :create, :update, :destroy]
    end
  end

  resources :game_masters, except: [:index, :destroy]

  root "welcome#index"

#################################

  get "login" => "sessions#new"
  post "login" => "sessions#create"

#################################

end
