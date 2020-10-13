Rails.application.routes.draw do
  root to: 'rooms#show'
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
