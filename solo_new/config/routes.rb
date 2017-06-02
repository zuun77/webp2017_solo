Rails.application.routes.draw do
  resources :horoscopes
  get '/api/horoscopes/fortune/:id' => 'horoscopes#fortune'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
