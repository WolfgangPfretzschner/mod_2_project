class SessionsController < ApplicationController
  skip_before_action :authorized?, only: %i[new create]

  def new
    # code
  end

  def create
    @person = Person.find_by(email: person_params[:email])
    if @Person && @Person.authenticate(person_params[:password])
      log_in_person(@person.id)
      redirect_to edit_url
    else
      @error = "Those credentials don't match anything we have in the database"
      render :edit
    end
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
