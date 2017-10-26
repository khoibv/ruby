Rails.application.routes.draw do
  resources :departments
  resources :users
  root 'user_bookings#index'

  resources :locations
  resources :user_bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
