Rails.application.routes.draw do

devise_for :users, defaults: { format: :json }

resources :users do
  resources :habits
end

get '/habits/' => 'habits#all'
get '/text/' => 'habits#text'

end
