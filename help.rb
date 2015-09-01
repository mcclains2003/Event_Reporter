class Help

  def help_list
    puts "LIST OF COMMANDS".center(30, "*")
    puts "help".center(30)
    puts "help <command>".center(30)
    puts "queue count".center(30)
    puts "queue clear".center(30)
    puts "queue print".center(30)
    puts "queue print by <attribute>".center(30)
    puts "queue save to <filename.csv>".center(30)
    puts "find <attribute> <criteria>".center(30)
    puts "".center(30, "*")
  end

  def help_desc(arguments)
    case arguments
    when 'queue count'
      puts "#{arguments}: will output how many records are in the current queue."
    when 'queue clear'
      puts "#{arguments}: will empty the queue."
    when 'queue print'
      puts "#{arguments}: will print out a tab-delimited data table with a header row."
    when 'queue print by'
      puts "#{arguments}: will print the data table sorted by the specified attribute."
    when 'queue save to'
      puts "#{arguments}: will export the current queue to the specified filename as a CSV file."
    when 'find'
      puts "#{arguments}: will load the queue with all records matching the criteria."
  end

end