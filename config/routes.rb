Rails.application.routes.draw do
  resources :statics
  root 'static#home'

  resources :properties
end
