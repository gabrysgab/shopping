Rails.application.routes.draw do
  resources :shopping_lists do
    resources :shopping_items do
      member do
        patch :complete
      end
    end
  end
  root "shopping_lists#index"
end
