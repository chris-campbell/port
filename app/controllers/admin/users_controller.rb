class Admin::UsersController < Admin::BaseController
  respond_to :json

  def show
    @user = User.find(params[:id])
    respond_with @user
  end

  def user_params
    params.require(:user).permit(:email, :name)
  end
end
