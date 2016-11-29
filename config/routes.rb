Rails.application.routes.draw do
  resources :question_types
  get 'admin', to: 'pages#admin'
  get 'choose_age_group', to: 'pages#choose_age_group'

  get 'pages/about'

  get 'pages/contact'

  resources :answers
  resources :questions
  resources :quizzes
  resources :profiles
	devise_for :users, controllers: { registrations: "registrations" }
	resources :users
  get 'home/index'
  root 'home#index'
  resources :quizzes, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
