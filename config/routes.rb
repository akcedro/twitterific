Rails.application.routes.draw do
  get 'tweets/index'

  get 'tweets/show'

  get 'tweets/edit'

  get 'tweets/new'

  get 'tweets/_form'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
