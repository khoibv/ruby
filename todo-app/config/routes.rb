Rails.application.routes.draw do
  resources :users
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root 'application#hello'
  root 'todos#index'

end
