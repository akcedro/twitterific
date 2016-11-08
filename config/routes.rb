Rails.application.routes.draw do
  get 'profiles/show'

  get 'profiles/index'

  resources :tweets

  devise_for :users

  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
