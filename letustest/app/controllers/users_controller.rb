class UsersController < Devise::RegistrationsController
  def new
    super
  end
  
  def show
    @users = Users.find(params[:id])
  end
end
