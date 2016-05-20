Rails.application.routes.draw do
  /get 'signup' => 'users#new'/
  resources :users
  resources :sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :shopping_lists do
    resources :shopping_items do
      member do
        patch :complete
      end
    end
  end
  root "shopping_lists#index"
end
