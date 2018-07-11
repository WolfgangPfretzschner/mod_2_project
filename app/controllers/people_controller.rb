class PeopleController < ApplicationController




############################
  before_action :fetch_person, only: [:show]
  def new
    @person = Person.new
  end

  def show

  end
  def index
    @people = Person.all
  end

  def create

  end

  private

  def fetch_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:name, :email, :slack, :classification, :birthday)
  end
end
