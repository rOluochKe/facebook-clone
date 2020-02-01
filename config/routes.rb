# frozen_string_literal: true

Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/show'
  get 'users/new'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
