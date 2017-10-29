Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'courses#index'

  get 'prereq_courses' => 'courses#search_prereq_courses'

end
