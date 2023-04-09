class ApplicationController < ActionController::Base
  def square_blank_form
    render({ :template => "calculation_template/new_square_form.html.erb" })
  end

  def square_results
    render({ :template => "calculation_template/square_results.html.erb" })
  end
end
