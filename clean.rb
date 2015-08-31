class Clean

  def clean_zipcode(zipcode)
    zipcode.to_s.rjust(5, "0")[0..4]
  end

  def clean_phone(phone)
    numbers = phone.split("")
    phone_number = numbers.map {|number| Integer(number) rescue nil}.compact

    if phone_number.size == 10
      "(" + phone_number.shift(3).join + ")" + phone_number.shift(3).join + "-" + phone_number.shift(4).join
    elsif phone_number.size == 11
      if phone_number[0] == 1
        phone_number.shift
        "(" + phone_number.shift(3).join + ")" + phone_number.shift(3).join + "-" + phone_number.shift(4).join 
      else
        "Incomplete Number"
      end
    else
      "Incomplete Number"
    end
  end

end