require 'csv'

class Loader

  def initialize
    @default_file = 'event_attendees.csv'
  end

  def load(filename)
    CSV.open(filename, headers: true, header_converters: :symbol)
    puts "Your File is open"
  end

end