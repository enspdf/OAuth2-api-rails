Rails.application.routes.draw do
  root :to => 'users#new'
  
  use_doorkeeper
  resources :courses
  resources :users

  namespace :api, defaults: { format: "json" } do
    resources :courses, controller: :courses,  only: [:index]
  end
end
