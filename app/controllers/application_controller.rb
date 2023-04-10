class ApplicationController < ActionController::Base
  def square_blank_form
    render({ :template => "calculation_template/new_square_form.html.erb" })
  end

  def square_results
    render({ :template => "calculation_template/square_results.html.erb" })
  end

  def square_root_blank_form
    render({ :template => "calculation_template/new_square_root_form.html.erb" })
  end

  def square_root_results
    render({ :template => "calculation_template/square_root_results.html.erb" })
  end

  def payment_blank_form
    render({ :template => "calculation_template/new_payment_form.html.erb" })
  end

  def payment_results
    @user_apr = params[:user_apr].to_f / 100
    @user_years = params[:user_years].to_f
    @user_pv = params[:user_pv].to_f

    @monthly_apr = @user_apr / 12
    @monthly_periods = @user_years * 12

    @monthly_payment = (@monthly_apr * @user_pv) / (1 - (1 + @monthly_apr) ** -@monthly_periods)

    render({ :template => "calculation_template/payment_results.html.erb" })
  end

  def random_blank_form
    render({ :template => "calculation_template/new_random_form.html.erb" })
  end

  def random_results
    render({ :template => "calculation_template/random_results.html.erb" })
  end
end
