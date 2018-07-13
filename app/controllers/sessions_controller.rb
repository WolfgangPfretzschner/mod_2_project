class SessionsController < ApplicationController
  skip_before_action :authorized?, only: %i[new create destroy]


  def new
    #is login form
  end

  def create
  @person = Person.find_by(email: person_params[:email])
  if @person && @person.authenticate(person_params[:password])
    log_in_person(@person.id)
    flash[:success] = "Welcome to the Flatface App!"
    redirect_to edit_person_path(@person)
  else
    @error = "Those credentials don't match anything we have in the database"
    render :new
  end
end

  def update

  end

  def destroy
    reset_session
    flash[:success] = "You have been loged out!"
    redirect_to new_session_path
  end

  private

  def person_params
    params.require(:session).permit(:email, :password)
  end
end
