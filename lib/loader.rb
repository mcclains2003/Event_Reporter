require 'csv'

class Loader
  attr_reader :default_file

  def initialize
    @default_file = 'event_attendees.csv'
  end

  def load(filename = default_file)
    @data = CSV.read(filename, headers: true, header_converters: :symbol)
  end

  def data
    @data
  end

end