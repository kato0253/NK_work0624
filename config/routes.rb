Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
