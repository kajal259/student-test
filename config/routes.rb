Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :admins 
  devise_for :students


  devise_scope :admins do 
    get "admins", to: "devise/sessins#new"
  end
 
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "subjects#index"
  # root :to => "subjects#index"
  
  resources :subjects
  # Defines the root path route ("/")
  scope '/admin' do 
   root "subjects#index"
  end
end 


