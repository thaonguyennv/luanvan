class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by name: params[:session][:name].downcase
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Đăng nhập thành công"
      log_in user
      redirect_to user
    else
      flash[:danger] = "Username/password không đúng"
      render :new
    end
  end

  def destroy
    log_out
    flash[:success] = "Bạn đã logged out"
    redirect_to login_path
  end
end
