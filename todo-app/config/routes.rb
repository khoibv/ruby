Rails.application.routes.draw do
  resources :users do
    resources :todos
  end
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root 'application#hello'
  root 'users#index'

end
