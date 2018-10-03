Rails.application.routes.draw do
# Keep the following lines in order!
devise_for :users, defaults: { format: :json }

resources :users do
    resources :habits
end

get '/habits/' => 'habits#all'
get '/users/:user_id/habits' => 'habits#index'
# post '/users/' => 'users#create'

end
