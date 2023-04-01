Rails.application.routes.draw do
  resources :services do 
    resources :shuttles, shallow: true
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "services#index"
end
