Rails.application.routes.draw do
  resources :habits
devise_for :users, defaults: { format: :json }
end
