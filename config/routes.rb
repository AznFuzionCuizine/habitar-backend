Rails.application.routes.draw do
devise_for :users, defaults: { format: :json }

resources :users do
  resources :habits
end

get "/users/:user_id/habits" => 'habits#index'
end
