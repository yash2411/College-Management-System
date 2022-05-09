Rails.application.routes.draw do
  get 'branchs/index'
  get 'grades/index'
  get 'students/index'
  get 'students/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get to: 'application_controller/hello'
  resources :students
  resources :grades
  resources :branchs
  root "students#index"
end
