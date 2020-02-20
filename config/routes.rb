# frozen_string_literal: true

Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/edit'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/edit'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  resources :ingredients, only: [:index]
end
