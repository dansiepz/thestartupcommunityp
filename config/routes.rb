Thestartupcommunityp::Application.routes.draw do
  resources :new_items

  resources :contact_forms

  resources :business_profiles

  resources :profile_types

  resources :user_profiles

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end