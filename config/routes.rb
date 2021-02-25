Rails.application.routes.draw do
  root 'rents#index'
  resources :rents
end