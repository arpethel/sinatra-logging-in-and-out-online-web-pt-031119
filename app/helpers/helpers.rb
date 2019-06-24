require 'pry'
class Helpers
  def self.current_user(session)
    @user = User.find_by_id(session[:user_id])
    # if session[:user_id] == @user.id
    #   @user
    # end
  end

  def self.is_logged_in?(session)
    !!session[:user_id]
  end
end
