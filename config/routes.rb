Rails.application.routes.draw do 
 

  devise_for :vendors, controllers: {
    sessions: 'vendors/sessions',
    invitations: 'vendors/invitations'
  }
  
  
  
  namespace :vendor do
    resources :events
    resources :event_types 
  end

  resources :users
  get 'home/index'
  
  root 'home#index'

  namespace :admin do 
    resources :business_types 
    resources :shops
    resources :owners
    resources :shop_items
  end  

  resources :business_types do
    resources :shops
  end
  
   resources :shops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
