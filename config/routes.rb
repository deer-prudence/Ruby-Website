Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/work', to: 'static_pages#work'
  get '/skills', to: 'static_pages#skills'
  get '/donatella', to: 'static_pages#donatella'
  get '/projects', to: 'static_pages#projects'
  resources :visitors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
