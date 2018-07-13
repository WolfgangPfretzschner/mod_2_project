class PeopleController < ApplicationController

before_action :set_person, only: [:show, :edit, :update, :destoy]
skip_before_action :authorized?, except: %i[edit]
  def index
    @people = Person.all

  end

  def show
  end

  def new
    @person = Person.new
  end

   def create
    @person = Person.new(person_params)
      if @person.save
      else
        render :new
      end
  end

  def edit
    unless logged_in_person_id == @person.id
      flash[:success] = "You do not have the rights to access this page!"
      redirect_to person_path(logged_in_person_id)
    end
  end

  def login
    @person = Person.new
  end

  def new_register
    @person = Person.new
  end

  def register
    @person = Person.find_by(email: person_params[:email])
    if @person && !@person.has_account?
      @person.update(has_account?: true, password: person_params[:password])
      @person.authenticate(person_params[:password])
      log_in_person(@person.id)
      @person.save
      flash[:success] = "Welcome to the Flatface App!"
      redirect_to edit_person_path(@person)
    elsif @person && @person.has_account?
      flash[:error] = "You have already registered, please log in!"
      redirect_to new_session_path
    else
      flash[:error] = "Wrong credentials"
      render :new_register
    end
  end

  def update
    @person.update(person_params)
    if @person.save
      #log_in_person(@person.id)
      flash[:success] = "Updated your profie!"
      redirect_to person_path(@person)
    else
      render :edit
    end
  end

  def destroy
    @person.destroy
    redirect_to people_path
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end


  def person_params
    params.require(:person).permit(:name, :email, :slack, :password, :classification, :birthday,interest_ids:[], interests_attributes: [:name])
  end

end
