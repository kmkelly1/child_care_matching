Rails.application.routes.draw do
  devise_for :parents
  # Routes for the Parent resource:
  # READ
  get "/parents", :controller => "parents", :action => "index"
  get "/parents/:id", :controller => "parents", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
