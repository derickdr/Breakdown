Rails.application.routes.draw do

  get 'home/index'

  get('/', {to: 'home#index', as: 'root'})
  get('/sign_in', {to: 'sessions#new'})

  resource :users, only:[:new, :create, :index, :show]
  resource :sessions, only:[:new, :create] do
    delete :destroy, on: :collection
  end

end
