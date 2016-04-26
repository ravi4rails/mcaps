Rails.application.routes.draw do
  resources :events do
    collection do
      get :event_calendar
      get :calendar_events
    end
  end
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
  get '/dashboard' => 'home#dashboard'
  root "home#index"
end
