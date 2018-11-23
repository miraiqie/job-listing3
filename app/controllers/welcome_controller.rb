class WelcomeController < ApplicationController
  def index
    flash[:alert] = "good job."
  end
end
