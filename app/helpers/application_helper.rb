module ApplicationHelper
  def sign_in(user)
    session[:user_name] = user.name
  end

  def logged_in?
    !session[:user_name].blank?
  end

  def log_out
    session[:user_name] = nil
  end
end
