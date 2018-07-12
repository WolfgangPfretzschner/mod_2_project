class SessionsController < ApplicationController
  skip_before_action :authorized?, only: %i[new create]
  before_action :set_session, only: [:show, :edit, :update, :destoy]

  def index
    @sessions = Session.all
  end

  def show
  end

  def new
    @session = Session.new
  end

  def create
  @session = Session.new(session_params)
    if @session.valid?
      @session.save
      redirect_to @session
    else
      render :new
    end
  end


  def edit
  end

  def update
    @session.update(session_params)
    if @session.save
      redirect_to session_path(@session)
    else
      render :edit
    end
  end

  def destroy
    @session.destoy
    redirect_to sessions_path
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:name)
  end


  # def new
  #   # code
  # end
  #
  # def create
  #   @person = Person.find_by(email: person_params[:email])
  #   if @Person && @Person.authenticate(person_params[:password])
  #     log_in_person(@person.id)
  #     redirect_to edit_url
  #   else
  #     @error = "Those credentials don't match anything we have in the database"
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   session.delete(:person_id)
  #   redirect_to new_session_path
  # end
  #
  # private
  #
  # def person_params
  #   params.require(:session).permit(:email, :password)
  # end
end
