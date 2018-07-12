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

  def new_reg

  end


  def register
    @person = Person.find_by(email: params[:email])
    if @person && !@person.has_account?
      @person.authenticate(person_params[:password])
      log_in_person(@person.id)
      redirect_to @person
    else

      render :new_reg, notice: 'Secret was successfully created.'
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

  def person_params
    params.require(:person).permit(:name, :email, :slack, :classification, :birthday,interest_ids:[], interests_attributes: [:name])
  end

end
