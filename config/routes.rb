Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/skills" => "skills#index"
  post "/skills" => "skills#create"
  get "/skills/:id" => "skills#show"
  patch "skills/:id" => "skills#update"
end
