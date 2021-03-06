Rails.application.routes.draw do
  devise_for :users
  delete '/users/sign_out' => 'devise/sessions#destroy'
  resources :friends do
    collection do
      get 'search' => 'friends#search'
    end
  end
  root to: 'home#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
