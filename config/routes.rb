Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Students
  resources :students

  # Instructors
  resources :instructors

  # Admins
  resources :admins

  # Courses
  resources :courses

  # Enrollments
  resources :enrollments

end


