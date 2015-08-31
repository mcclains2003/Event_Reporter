class EventReporter

  def initialize
    puts "Event Reporter Intializing..."
  end

  def run_ev_reporter
    puts "Welcome to Event Reporter!"
    input = ""
    while command != 'quit'
      printf "Please enter a command: "
      input = gets.chomp

      args = input.split(" ")
      command = args.first
      arguments = arg[1..-1]

      process_command(command, arguments)
    end
  end

  def process_command(command, arguments)
    case command
    when SOMETHING
      #do STUFF
    when SOMETHING ELSE
      #do OTHER STUFF
    end
  end

end