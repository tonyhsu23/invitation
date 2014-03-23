Invitation::Application.routes.draw do
  #root to: "welcome#new"
  root to: "people#show"
  resources :people 
  get 'contact' => "contact#index"
  get 'location' => "location#index"
end
