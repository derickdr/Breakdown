Rails.application.routes.draw do

  get('/', {to: 'home#index', as: 'root'})

  resources :users, only:[:new, :create, :index, :show]
  
  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

end
