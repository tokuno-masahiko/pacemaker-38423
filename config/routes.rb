Rails.application.routes.draw do
  devise_for :adminns, controllers: {
    sessions:      'adminns/sessions',
    passwords:     'adminns/passwords',
    registrations: 'adminns/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  root to: 'products#index'

  # resources :products 
  resources :users do
    resource :plans
    resource :products
  end

end
