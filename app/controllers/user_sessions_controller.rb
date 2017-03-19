class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(:users, notice: 'Login successfully')
    else
      flash.now[:alert] = 'login failed'
      render action: 'new'
    end
  end

  def destroy
  end
end
