Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  resources :directors
  get "/directors/youngest", { :controller => "directors", :action => "youngest" }
  get "/directors/eldest", { :controller => "directors", :action => "eldest" }
  get "/movies", { :controller => "movies", :action => "index" }
  get "/movies/:id", { :controller => "movies", :action => "show" }
  get "/actors", { :controller => "actors", :action => "index" }
  get "/actors/:id", { :controller => "actors", :action => "show" }
end
