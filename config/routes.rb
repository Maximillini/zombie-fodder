Rails.application.routes.draw do
  get "/" => "welcome#index"
  resources :games do
    resources :parties do
      resources :players, only: [:create, :edit, :destroy]
    end
  end

  root "welcome#index"



end
