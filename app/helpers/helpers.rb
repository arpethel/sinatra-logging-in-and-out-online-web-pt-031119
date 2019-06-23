require 'pry'
class Helpers
  def self.current_user(session)
    @user = User.find_by(username: params[:username], password: params[:password])
    if session[:user_id] == @user.id
      @user
    end
  end

  def self.is_logged_in?
  end
end
