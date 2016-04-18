Rails.application.routes.draw do
  resources :shopping_lists do
    resources :shopping_items
  end
  root "shopping_lists#index"
end
