Rails.application.routes.draw do

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end
  get 'sign_in', to: 'sessions#new'

  get 'home', to: 'home#index', as: 'root'

  resources :users, only:[:new, :create, :index, :show]

  resources :items, only:[:new, :create, :index, :show]
  get 'inventory', to: 'items#index'
  get 'item', to: 'items#show'
  get 'new_item', to: 'items#new'

end
