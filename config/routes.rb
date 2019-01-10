Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  get 'form' => 'resers#new'
  get 'login' => 'users#new'
  root'welcome#index'
  resources :resers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
