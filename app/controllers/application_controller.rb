class ApplicationController < ActionController::Base
  

  def after_sign_in_path_for(resource)
    case resource
    when Student
      dashboard_index_path
    when Admin
      subjects_path
    end
  end

  def after_sign_out_path_for(resource) 
    root_path
  end 
end
