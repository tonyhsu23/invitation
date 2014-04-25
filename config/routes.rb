Invitation::Application.routes.draw do
  resources :people
  root to: "people#show"
  
  get 'contact' => "contact#index"
  get 'location' => "location#index"
end
