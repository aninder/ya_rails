class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    # render :json => Order.all
    # binding.pry
    puts "--------------->>#{session[:xx]}"
    fresh_when :etag
  end

  def show
  end

  def create
    session[:xx]=24;
    o = Order.all
    head 204, location:"http://balleballe"
    # respond_to do |format|
    #   format.html {render :text => "balle"}
    #   format.json { render :json => o.as_json(only: [:name]) }
    #   # fresh_when :etag=>o
    # end
  end
end
