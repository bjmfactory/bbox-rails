Rails.application.routes.draw do
  resources :boxes, :links

  root 'boxes#index'

end
