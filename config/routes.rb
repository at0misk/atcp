Rails.application.routes.draw do
  root 'sessions#new'
  post 'create' => 'sessions#create'
  get 'dl' => 'sessions#dl'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
