class UsersController < ApplicationController

  def show
    @user = User.find_by(params[:user_id])
    @name = @user.name
    @prototypes = Prototype.all
  end

  private

  def user_params
  params.require(:user).permit(:name, :email, :password, :profile, :occupation, :position ).merge(prototype_id: params[:prototype_id])
  end
end



