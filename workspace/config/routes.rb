Rails.application.routes.draw do
  
  devise_for :users
  match ":controller(/:action(/:id))", :via => [:post, :get]

end
