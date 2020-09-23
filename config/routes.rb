Rails.application.routes.draw do
  resources :clothing_items, except: [:index]
  root to: 'clothing_items#index'
  get 'item_search/:search', to: 'clothing_items#search'
end
