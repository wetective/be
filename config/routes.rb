Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
    get '/users/register', to: 'users#new'
    post '/users/register', to: 'users#create'
    end
  end
end
