require 'csv'

class Loader

  def load(filename = "./event_attendees.csv")
  
    CSV.open(filename, headers: true, header_converters: :symbol)

  end


end