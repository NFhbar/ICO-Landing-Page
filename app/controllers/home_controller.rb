class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @mainTitle = "Welcome to Oshie"
    @mainDesc = "This is your main Dashboard. From here you can create, deploy,
    and monitor your assessments."
  end

  def minor
  end

end
