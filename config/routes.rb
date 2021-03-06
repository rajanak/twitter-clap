Rails.application.routes.draw do

 devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  root to: 'static_pages#index'
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'
  end    
  
  get 'static/user'
  resources :tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
