class PeopleController < ApplicationController

before_action :set_person, only: [:show, :edit, :update, :destoy]
# before_action :authorized?, only: %i[edit update]
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
  end

  def new_register

  end


  def register
    # byebug
    @person = Person.find_by(email: register_params[:email])

    if @person && !@person.has_account?

      @person.authenticate(register_params[:password])
      # @person.has_account? = true
      log_in_person(@person.id)
      redirect_to edit_person_path(@person)
    else
      render :new_register, notice: 'Secret was successfully created.'
    end
  end

  def update
    @person.update(person_params)
    if @person.save
      # log_in_person(@person.id)
      redirect_to person_path(@person)


    else
      render :edit
    end
  end

  def destroy
    @person.destoy
    redirect_to persons_path
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def register_params
    params.permit(:email, :password)
  end

  def person_params
    params.require(:person).permit(:name, :email, :slack, :password, :classification, :birthday,interest_ids:[], interests_attributes: [:name])
  end

end
