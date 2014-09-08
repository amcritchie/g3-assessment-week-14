class PrescriptionController < ApplicationController
  def new
    # @prescription = Prescription.new
    # @patient = Patient.find(params[:patient_id])
    # @medications = Medication.all
  end

  def create
    @prescription = Prescription.create(
      medication_id: params[:prescription][:medication_id],
      patient_id: params[:patient_id],
      user_id: current_user.id
    )

    if @prescription.save
      redirect_to patient_path(params[:patient_id])
    else
      @patient = Patient.find(params[:patient_id])
      @medications = Medication.all
      render 'new'
    end
  end
end