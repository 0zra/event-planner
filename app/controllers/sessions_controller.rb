class SessionsController < ApplicationController
  def new
  end
  def create
    if @user = User.find_by(name: params[:session][:name])
        flash[:login] = "Welcome #{@user.name}"
        sign_in(@user)
        redirect_to new_user_path
    else
        flash.now[:login] = "No such user"
        render 'new'
      end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
