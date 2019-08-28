Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :brand do
    resources :style do
        resources :category
    end
  end
  resources :category
  resources :style
end
