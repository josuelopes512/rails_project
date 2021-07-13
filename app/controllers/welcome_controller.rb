class WelcomeController < ApplicationController
  def index
    @my_name = params[:nome]
  end
end
