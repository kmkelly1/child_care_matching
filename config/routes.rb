Rails.application.routes.draw do
  # Routes for the Childcare_hour resource:
  # CREATE
  get "/childcare_hours/new", :controller => "childcare_hours", :action => "new"
  post "/create_childcare_hour", :controller => "childcare_hours", :action => "create"

  # READ
  get "/childcare_hours", :controller => "childcare_hours", :action => "index"
  get "/childcare_hours/:id", :controller => "childcare_hours", :action => "show"

  # UPDATE
  get "/childcare_hours/:id/edit", :controller => "childcare_hours", :action => "edit"
  post "/update_childcare_hour/:id", :controller => "childcare_hours", :action => "update"

  # DELETE
  get "/delete_childcare_hour/:id", :controller => "childcare_hours", :action => "destroy"
  #------------------------------

  devise_for :providers
  # Routes for the Provider resource:
  # READ
  get "/providers", :controller => "providers", :action => "index"
  get "/providers/:id", :controller => "providers", :action => "show"


  # Routes for the Child resource:
  # CREATE
  get "/children/new", :controller => "children", :action => "new"
  post "/create_child", :controller => "children", :action => "create"

  # READ
  get "/children", :controller => "children", :action => "index"
  get "/children/:id", :controller => "children", :action => "show"

  # UPDATE
  get "/children/:id/edit", :controller => "children", :action => "edit"
  post "/update_child/:id", :controller => "children", :action => "update"

  # DELETE
  get "/delete_child/:id", :controller => "children", :action => "destroy"
  #------------------------------

  devise_for :parents
  # Routes for the Parent resource:
  # READ
  get "/parents", :controller => "parents", :action => "index"
  get "/parents/:id", :controller => "parents", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
