Rails.application.routes.draw do
  devise_for :users
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
	root :controller => 'posts', :action => :index

  resources :posts do
    resources :comments
	end

  resources :users, only: [:show, :update], param: :username do
  end

  resources :ask_a_peer do
  end

end
