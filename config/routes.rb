Invitation::Application.routes.draw do
  scope "/admin" do
  	resources :people, only: [:index]
  end
  resources :people, except: [:index]
  root to: "people#show"
  
  get 'contact' => "contact#index"
  get 'location' => "location#index"
end
