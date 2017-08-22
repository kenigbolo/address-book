Rails.application.routes.draw do
  root 'address_book#index'

  resources :address_book do
    resources :user
  end
end
