Rails.application.routes.draw do

  get 'home/index'

  get('/', {to: 'home#index', as: 'root'})
  get('/sign_in', {to: 'sessions#new'})

  resources :users, only:[:new, :create, :index, :show]
  resources :sessions, only:[:new, :create] do
    delete :destroy, on: :collection
  end

end
