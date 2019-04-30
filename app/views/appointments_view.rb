class AppointmentsView

  def ask_id
    puts "Enter id:"
    gets.chomp.to_i
  end

  def ask_date
    puts "Enter date (dd/mm/yyyy):"
    gets.chomp
  end

  def list(appointments)
    system "clear"
    puts ("-" * 15) + 'Appointments List' + ("-" * 15)
    appointments.each do |appointment|
      puts "id: #{appointment.id} | #{appointment.date} | Doctor: #{appointment.doctor.name} | Patient: #{appointment.patient.name}"
    end
    puts ('-' * 30)
    puts "\n\n"
    puts 'Press enter to continue...'
    gets

  end
end