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
    @user_number = params["num"].to_f
    @square = @user_number**2
    render("calculations/flex_square_5.html.erb")
  end

end
