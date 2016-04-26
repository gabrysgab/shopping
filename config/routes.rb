Rails.application.routes.draw do
  get 'signup' => 'users#new'
  resources :users
  resources :sessions
  get 'login' => 'sessions#new'
  resources :shopping_lists do
    resources :shopping_items do
      member do
        patch :complete
      end
    end
  end
  root "shopping_lists#index"
end
