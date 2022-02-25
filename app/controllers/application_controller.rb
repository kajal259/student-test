class ApplicationController < ActionController::Base
  

  def after_sign_in_path_for(resource)
    case resource
    when Student
      students_dashboard_path
    when Admin
      admins_dashboard_path
    end
  end

  def after_sign_out_path_for(resource) 
    root_path
  end 
end
