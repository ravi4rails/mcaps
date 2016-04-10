Rails.application.routes.draw do
  resources :subjects
  resources :courses do
    collection do
      post :include_subjects
    end
  end
  resources :employees
  resources :students
  get 'home/index'
  root "home#index"
end
