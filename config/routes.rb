Rails.application.routes.draw do
  resources :meetings_apps
  resources :meetings
   root 'meetings#index'
end
