class ApplicationController < ActionController::Base
  include ApplicationHelper
  def after_sign_in_path_for(resource)
    user_path(resource.id)
  end
  def after_sign_out_path_for(resource)
    new_user_session_path # ログアウト後に遷移するpathを設定
  end
end
