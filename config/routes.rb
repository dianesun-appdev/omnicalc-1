Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "square_blank_form" })

  get("/square/results", { :controller => "application", :action => "square_results" })

  #square_root / new

  #payment / new

  #random / new
end
