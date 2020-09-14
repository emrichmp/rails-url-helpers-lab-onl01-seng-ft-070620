Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'student/:id/activate', to: 'student#activate', as:'activate_student'
  resources :students, only: [:index, :show]
  
    resources :students, only: :show #, as:'student'
  # get "students/:id", to: "students#show"
  get 'students/:id/activate', to: 'students#activate', as:'activate-student'
end
