class Students::DashboardController < ApplicationController
  before_action :authenticate_student!
  def index
    @subjects = Subject.all
  end
end
