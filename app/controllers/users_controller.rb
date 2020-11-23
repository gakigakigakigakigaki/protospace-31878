class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @prototypes = @user.prototypes
    
    
    
  end
end

 def user_params
  params.require(:user).permit(:name, :email, :password, :profile, :occupation, :position ).merge(user_id: current_user.id) 


 end
