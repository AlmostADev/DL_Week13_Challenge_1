Rails.application.routes.draw do
  get 'sales/new'
  post 'sales/new', to: 'sales#create'
  get 'sales/:id', to: 'sales#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
