Rails.application.routes.draw do
    resources :users do
    resources :habits
end

devise_for :users, controllers: {registrations: 'users/registrations'}, defaults: { format: :json }

get '/habits/' => 'habits#all'
get '/users/:user_id/habits' => 'habits#index'

end
