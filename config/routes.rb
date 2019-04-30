Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'students/search', to: 'students#search_page'
  resources :students
  resources :classrooms
end
