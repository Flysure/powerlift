Rails.application.routes.draw do

  resources :workouts do
    member do
      post 'addWeek'
    end
  end

  root 'workouts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
