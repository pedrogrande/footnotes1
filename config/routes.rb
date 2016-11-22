Rails.application.routes.draw do
  resources :profiles
	devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  root 'home#index'
  resources :quizzes, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
