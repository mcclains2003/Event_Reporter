require_relative 'help'

class EventReporter

  def initialize
    puts "Event Reporter Intializing..."
    @helper = Help.new
  end

  def process_command(command, arguments)
    case command
    when 'load'
      #do STUFF
    when 'help'
      @helper.help(arguments)
    end
  end

  def run
    puts "Welcome to Event Reporter!"
    command = ""
    while command != 'quit'
      printf "Please enter a command: "
      input = gets.chomp

      args = input.split(" ")
      command = args.first
      arguments = args[1..-1].join(" ")
      
      process_command(command, arguments)
    end
  end

end