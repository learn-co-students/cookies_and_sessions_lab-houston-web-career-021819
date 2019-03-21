Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'products#index', as: 'products'
  post '/', to: 'products#add'

end
