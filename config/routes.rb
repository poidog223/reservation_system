Rails.application.routes.draw do
  root 'time_slots#index'

  resources :reservations

  resources :time_slots do
  	resources :reservations
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
