class DoctorsView
  def ask_name
    puts "Enter doctor name:"
    return gets.chomp.strip
  end

  def list(doctors)
    system "clear"
    puts ("-" * 15) + 'Doctors List' + ("-" * 15)
    doctors.each do |doctor|
      puts "id: #{doctor.id} | Doctor: #{doctor.name}"
    end
    puts ('-' * 30)
    puts "\n\n"
    puts 'Press enter to continue...'
    gets
  end


end