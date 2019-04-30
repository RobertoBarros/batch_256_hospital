require_relative '../views/patients_view'
require_relative '../views/rooms_view'

class PatientsController
  def initialize(patient_repository, room_repository)
    @patient_repository = patient_repository
    @room_repository = room_repository
    @view = PatientsView.new
    @roomsView = RoomsView.new
  end

  def create
    name = @view.ask_name
    age = @view.ask_age
    patient = Patient.new(name: name, age: age)


    @roomsView.list(@room_repository.all)
    room_number = @roomsView.ask_number
    room = @room_repository.find_by_number(room_number)

    room.add_patient(patient)

    @patient_repository.add(patient)

  end

  def list
    patients = @patient_repository.all
    @view.list(patients)
  end
end