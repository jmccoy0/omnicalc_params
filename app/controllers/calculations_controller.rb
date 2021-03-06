class CalculationsController < ApplicationController
# ApplicationController is a master class - CalculationsController is inheriting those characteristics

  def square_root
    @user_number = params[:user_number].to_f
    @square_root = @user_number**0.5
    render("calculations/square_root.html.erb")
  end

  def square
    @user_number = params[:user_number].to_f
    # user_number was defined in html code in the form
    @square = @user_number**2
    render("calculations/square.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def flex_square_5
    # Parameters: {"num"=>"5"}
    @user_number = (params["num"].to_f).round(0)
    @square = (@user_number**2).round(0)
    render("calculations/flex_square_5.html.erb")
  end

  def flex_square_root_8
    @user_number = (params["num"].to_f).round(0)
    @square_root = (@user_number**0.5).round(2)
    render("calculations/flex_square_root_8.html.erb")
  end

  def flex_payment
    @user_int = params[:int].to_f/100
    @user_yrs = (params[:yrs].to_f).round(0)
    @user_prin = (params[:prin].to_f).round(0)
    int_as_decimal = @user_int*0.01
    monthly_rate = int_as_decimal/12
    numerator = monthly_rate*@user_prin
    months = @user_yrs*12
    denominator = 1-(1+monthly_rate)**-months
    @monthly_payment = numerator/denominator
    render("calculations/flex_payment.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment
    @user_int = params[:user_int].to_f
    @user_yrs = params[:user_yrs].to_f
    @user_prin = params[:user_prin].to_f
    int_as_decimal = @user_int*0.01
    monthly_rate = int_as_decimal/12
    numerator = monthly_rate*@user_prin
    months = @user_yrs*12
    denominator = 1-(1+monthly_rate)**-months
    @monthly_payment = numerator/denominator
    render("calculations/payment.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end

  def random
    @user_min = params[:user_min].to_f
    @user_max = params[:user_max].to_f
    if @user_min<@user_max
    @random_number = sprintf("%.4f", rand(@user_min...@user_max))
  else @random_number = "N/A"
  end
    render("calculations/random.html.erb")
  end

end
