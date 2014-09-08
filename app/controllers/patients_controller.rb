class PatientsController < ApplicationController

  def index

  end

  def show
    @patient = Patient.find_by(params[:id]) #params[:user][:email])
    @medications = Medication.order(:name)
  end
end