Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/work', to: 'static_pages#work'
  get '/contact', to: 'static_pages#contact'
  get '/donatella', to: 'static_pages#donatella'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
