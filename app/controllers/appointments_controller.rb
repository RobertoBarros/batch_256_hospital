require_relative '../views/appointments_view'

class AppointmentsController
  def initialize(appointment_repository, patient_repository, doctor_repository)
    @appointment_repository = appointment_repository
    @doctor_repository = doctor_repository
    @patient_repository = patient_repository
    @view = AppointmentsView.new
    @patients_view = PatientsView.new
    @doctors_view = DoctorsView.new
  end

  def create
    @patients_view.list(@patient_repository.all)
    patient_id = @view.ask_id
    patient = @patient_repository.find_by_id(patient_id)

    @doctors_view.list(@doctor_repository.all)
    doctor_id = @view.ask_id
    doctor = @doctor_repository.find_by_id(doctor_id)

    date = @view.ask_date

    appointment = Appointment.new(date: date, patient: patient, doctor: doctor)

    @appointment_repository.add(appointment)

  end

  def list
    @view.list(@appointment_repository.all)
  end

end