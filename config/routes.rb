Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "square_blank_form" })

  get("/square/results", { :controller => "application", :action => "square_results" })

  get("/square_root/new", { :controller => "application", :action => "square_root_blank_form" })

  get("/square_root/results", { :controller => "application", :action => "square_root_results" })

  get("/payment/new", { :controller => "application", :action => "payment_blank_form" })

  get("/payment/results", { :controller => "application", :action => "payment_results" })

  get("/random/new", { :controller => "application", :action => "random_blank_form" })

  get("/random/results", { :controller => "application", :action => "random_results" })
end
