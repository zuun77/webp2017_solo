Rails.application.routes.draw do
  resources :constellations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  get '/' => "constellations#index"
end
