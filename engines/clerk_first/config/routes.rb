ClerkFirst::Engine.routes.draw do
  devise_for :users
  root :to => "fix_pages#home"
end
