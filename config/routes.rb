Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "/experiences" => "experiences#create"
  patch "/experiences/:id" => "experiences#update"
  delete "/experiences/:id" => "experiences#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
  
  get "/skills" => "skills#index"
  post "/skills" => "skills#create"
  get "/skills/:id" => "skills#show"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"
end
