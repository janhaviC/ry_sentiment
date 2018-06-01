Rails.application.routes.draw do
  resources :sentiments
  get 's/senti'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
