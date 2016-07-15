ClerkFirst::Engine.routes.draw do
  devise_for :users
  #devise_for :users, class_name: "ClerkFirst::User", module: :devise
  root :to => "fix_pages#home"

  #namespace :user do
    #resources :registrations, only: [:new,:create]
  #end

  devise_scope :user do
    get    'sign_in',  to: 'user/sessions#new'
    post   'sign_in',  to: 'user/sessions#create'
    get    'sign_out', to: 'user/sessions#destroy'
    get    'sign_up',  to: 'user/registrations#new'
    post   'sign_up',  to: 'user/registrations#create'
  end
end
