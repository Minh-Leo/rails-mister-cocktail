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

  resources :doses, only: [:edit, :update, :destroy]

  resources :ingredients, only: [:index]
end


# cocktail_doses POST   /cocktails/:cocktail_id/doses(.:format)                                          doses#create

# new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new(.:format)                                              doses#new
