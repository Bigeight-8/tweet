Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "login" => "users#login_form"

  resources :posts do
    resources :comments
  end

  root 'posts#index'


end
