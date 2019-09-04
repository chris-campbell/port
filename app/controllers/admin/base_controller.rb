class Admin::BaseController < ApplicationController
  before_action :require_admin_user, only: [:new, :create]

  def require_admin_user
    unless current_user.admin?
      redirect_to root_path
      flash[:notice] = "Login with a Administative account to access"
    end
  end

end
