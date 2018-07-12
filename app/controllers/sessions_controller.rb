class SessionsController < ApplicationController
  # skip_before_action :authorized?, only: %i[new create]


  def new
    #is login form
  end

  def update

  end

  def destroy
    session.delete(:person_id)
    redirect_to new_session_path
  end

  private

  def person_params
    params.require(:session).permit(:email, :password)
  end
end
