require 'csv'

class Loader

  def initialize
    @default_file = 'event_attendees.csv'
  end

  def load(filename)
    if File.exists?(filename)
      CSV.read(filename, headers: true, header_converters: :symbol)
    else
      CSV.read(@default_file, headers: true, header_converters: :symbol)
    end
  end

end