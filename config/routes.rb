Rails.application.routes.draw do

  get 'workouts/new'

  get 'workouts/create'

  get 'workouts/show'

  get 'workouts/edit'

  get 'workouts/update'

  get 'workouts/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static#home'
end
