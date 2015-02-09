class UsersController < ApplicationController


  def index
    @users = User.all 
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username, :email, :DOB))
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
    @beverage = User.find(params[:id])
  end

  def update
  end
# Added s to user because thats how it was in pastries 
  def show
    @user = User.find(params[:id])    
  end

  def destroy
  end

end
end
