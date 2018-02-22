Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do 
  # look for .json.jbuilder view, not html.erb view
    resources :pokemon, only: [:create, :index, :show]
  end
end
