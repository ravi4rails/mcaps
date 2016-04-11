Rails.application.routes.draw do
  resources :employee_departments
  resources :subjects
  resources :courses do
    collection do
      post :include_subjects
      get :delete_subject
    end
  end
  resources :employees
  resources :students
  get 'home/index'
  root "home#index"
end
