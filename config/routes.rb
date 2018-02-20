Rails.application.routes.draw do
  # Routes for the Reservation resource:
  # CREATE
  get "/reservations/new", :controller => "reservations", :action => "new"
  post "/create_reservation", :controller => "reservations", :action => "create"

  # READ
  get "/reservations", :controller => "reservations", :action => "index"
  get "/reservations/:id", :controller => "reservations", :action => "show"

  # UPDATE
  get "/reservations/:id/edit", :controller => "reservations", :action => "edit"
  post "/update_reservation/:id", :controller => "reservations", :action => "update"

  # DELETE
  get "/delete_reservation/:id", :controller => "reservations", :action => "destroy"
  #------------------------------

  # Routes for the Available_hour resource:
  # CREATE
  get "/available_hours/new", :controller => "available_hours", :action => "new"
  post "/create_available_hour", :controller => "available_hours", :action => "create"

  # READ
  get "/available_hours", :controller => "available_hours", :action => "index"
  get "/available_hours/:id", :controller => "available_hours", :action => "show"

  # UPDATE
  get "/available_hours/:id/edit", :controller => "available_hours", :action => "edit"
  post "/update_available_hour/:id", :controller => "available_hours", :action => "update"

  # DELETE
  get "/delete_available_hour/:id", :controller => "available_hours", :action => "destroy"
  #------------------------------

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
