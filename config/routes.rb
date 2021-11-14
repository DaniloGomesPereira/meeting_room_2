# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :meetings_apps
  resources :meetings
  root 'meetings_apps#index'
end
