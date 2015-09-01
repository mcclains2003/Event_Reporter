require_relative 'help'
require_relative 'loader'
require 'pry'

class EventReporter

  def initialize
    puts "Event Reporter Intializing..."
    @helper = Help.new
    @loader = Loader.new
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

  def process_command(command, arguments)
    case command
    when 'load'
      @loader.load(arguments)
    when 'help'
      @helper.help(arguments)
    when 'queue'
      #DO SOMETHING
    when 'find'
      #DO SOMETHING
    end
  end

end