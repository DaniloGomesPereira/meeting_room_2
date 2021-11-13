Rails.application.routes.draw do
  devise_for :users
  resources :meetings_apps
  resources :meetings
   root 'meetings#index'
end
