Rails.application.routes.draw do
  devise_scope :admins do 
    get "admins", to: "devise/sessins#new"
  end
  devise_for :admins
  # devise_for :admins, controllers: {
    # sessions: 'admins/sessions'
  # }
  # match '/admin' => "subjects#index", :as => :admin_root
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "subjects#index"
  resources :subjects
  # Defines the root path route ("/")
  root "subjects#index"
end
