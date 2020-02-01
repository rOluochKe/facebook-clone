# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#start"

  resources :microposts, only: [:create, :destroy, :index, :show]
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
 
end
