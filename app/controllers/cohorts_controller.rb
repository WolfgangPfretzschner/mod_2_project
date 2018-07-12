class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destoy]

  def index
    @cohorts = Cohort.all
  end

  def show
  end

  def new
    @cohort = Cohort.new
  end

   def create
    @cohort = Cohort.new(cohort_params)
      if @cohort.valid?
        @cohort.save
        redirect_to @cohort
      else
        render :new
      end
  end


  def edit
  end

  def update
    @cohort.update(cohort_params)
    if @cohort.save
      redirect_to cohort_path(@cohort)
    else
      render :edit
    end
  end

  def destroy
    @cohort.destoy
    redirect_to cohorts_path
  end

  private

  def set_cohort
    @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:name)
  end

end
