Rails.application.routes.draw do
  get 'page/index'

  root 'page#index'  

  resources :products, only: [:index, :new, :create]
  resources :report_types, only: [:index, :new, :create]
  resources :status_types, only: [:index, :new, :create]
  resources :companies, only: [:index, :new, :create]
  resources :locations, only: [:index, :new, :create] do
    resources :sensors
    resources :tanks
    # resources :reports
  end
 
  resources :tanks # do
    # resources tank_readings
  # end
  # resources :address_types
  # resources :addresses
  resources :sensors # do
  #   resources :sensor_readings
  # end
  resources :states, only: [:index, :new, :create]
end
