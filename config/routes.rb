Rails.application.routes.draw do
  resources :boxes, :links

  root 'links#index'

end
