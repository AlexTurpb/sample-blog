Rails.application.routes.draw do
  get 'home/contacts'
  get 'home/index'
<<<<<<< Updated upstream
  post 'home/contacts'
  post 'home/index'

=======
  
  resource :contacts, only: [:new, :create] 
>>>>>>> Stashed changes
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
