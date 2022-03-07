Rails.application.routes.draw do
  resources :studenttests 
  resources :quizzes
  get 'quizzes' => 'quizzes/new'
  
  # devise_for :students
  #admin
  devise_for :admins 
  namespace :admins do
    get 'dashboard' => 'dashboard#index'
  end

  devise_scope :admins do 
    get "admins", to: "devise/sessions#new"
  end

  scope '/admin' do 
    root "subjects#index"
  end

  #student
  devise_for :students
  
  namespace :students do
    get 'dashboard' => 'dashboard#index'
  end

  devise_scope :students do 
    get "students", to: "devise/sessions#new"
  end

  scope '/students' do
    get 'subject', to: 'subject#show'
  end

  # scope '/student' do
  #   get 'subjects#show'
  # end
  resources :questions do
    resources :options, module: :questions
  end
  # resources :dashboard
  resources :subjects
  # Defines the root path route ("/")
  
end 


