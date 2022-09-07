module ApplicationHelper
  def user_login?
    unless current_user
      redirect_to new_user_session_path, notice: "ログインして下さい"
    end
  end
end
