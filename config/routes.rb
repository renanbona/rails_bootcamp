# frozen_string_literal: true

Rails.application.routes.draw do
  resources :portfolios
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get '/toogle_status', to: 'blogs#toogle_status'
    end
  end

  root to: 'pages#home'
end
