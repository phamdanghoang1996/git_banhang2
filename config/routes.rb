Rails.application.routes.draw do
  resources :categories, only: %i[index show]
  resources :products, only: %i[show]
  resources :customers, only: %i[new create]
  get 'infomation/:id', to: 'infomation#index'
end
