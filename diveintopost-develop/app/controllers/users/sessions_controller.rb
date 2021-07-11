class Users::SessionsController < Devise::SessionsController
  layout 'login/application'
  def destroy
    session.delete(:user_id)
    flash[:notice]="Logged out"
    redirect_to new_user_session_path
  end
  private

  def after_sign_in_path_for(user)
    keep_team = user.keep_team_id
    if keep_team.nil?
      if user.teams.count == 1
        team_url(user.teams.first)
      else
        user_url
      end
    else
      team_url(keep_team)
    end
  end

end
