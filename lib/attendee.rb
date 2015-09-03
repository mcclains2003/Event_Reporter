class Attendee
  attr_reader :data, :first_name, :last_name, :email_address,
              :home_phone, :street, :city, :state, :zipcode

  def initialize(data)
    @data       = data
    @first_name = data[:first_name]
    @last_name  = data[:last_name]
    @email      = data[:email_address]
    @home_phone = data[:home_phone]
    @street     = data[:street]
    @city       = data[:city]
    @state      = data[:state]
    @zipcode    = data[:zipcode]
  end

  def self.load(raw_data)
    raw_data.map { |data| new(data) }
  end
end