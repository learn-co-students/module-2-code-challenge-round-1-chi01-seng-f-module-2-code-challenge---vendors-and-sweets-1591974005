Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sweets
  resources :vendors
  get '/vendor_sweets/new', to: 'vendorsweets#new'
end
