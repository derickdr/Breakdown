Rails.application.routes.draw do

  get 'home', to: 'home#index', as: 'root'
  get '/', to: 'home#index'

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end
  get 'sign_in', to: 'sessions#new'

  resources :users, only:[:new, :create, :index, :show]

  resources :items
  get 'inventory', to: 'items#index'
  get 'new_item', to: 'items#new'
  get 'item', to: 'items#show'

end
