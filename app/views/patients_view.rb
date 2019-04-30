class PatientsView

  def ask_name
    puts "Enter patient name:"
    return gets.chomp.strip
  end

  def ask_age
    puts "Enter patient age:"
    return gets.chomp.to_i
  end

  def list(patients)
    system "clear"
    puts ("-" * 15) + 'Patients List' + ("-" * 15)
    patients.each do |patient|
      puts "id: #{patient.id} | Name: #{patient.name} | #{patient.age} years | Room Number: #{patient.room.number}"
    end
    puts ('-' * 30)
    puts "\n\n"
    puts 'Press enter to continue...'
    gets

  end

end