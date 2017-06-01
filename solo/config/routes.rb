Rails.application.routes.draw do
  resources :documents
  resources :constellations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  get '/' => "documents#index"
end
