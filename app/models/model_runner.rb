require "pry"

class ModelRunner

  attr_accessor :station_name

  def asks_for_borough
    puts "Hello! Welcome to a very, very LEAN MTA App."
    puts "What borough are traveling from?"
  end

  def gets_borough
    @borough = gets.chomp.capitalize
  end

  def shows_stations_in_borough
    @found_borough = Borough.find_by(borough_name: @borough) #found_borough = object id, and all the junk but searches by the name
    if @found_borough == nil
      puts "Sorry, let's do this all over again"
      gets_borough
      shows_stations_in_borough
    else
    puts "Here are all the stations in #{@found_borough.borough_name}" #returns statement with borough name
    puts @found_borough.borough_name
    @found_borough.stations.each do |station|
    puts station.station_name
   end
  end
end

  # def lets_get_those_stations
  #
  #     if station.station_name == nil
  #       puts "Try again!"
  #       shows_stations_in_borough
  #     else
  #      #iterates and returns the stations in that specific  borough
  #   end
  #   end
  # end

  def asks_for_station
    puts "Select your station from the above options"
  end

  def gets_station
    @station = gets.chomp
  end

  def shows_lines
    @found_station = Station.find_by(station_name: @station)
    if @found_station == nil
      puts "Ehhh, something went wrong. Try again."
      gets_station
      shows_lines
    else
    puts "Here are all the trains in #{@found_station.station_name}"
    puts @found_station.station_name
    @found_station.lines.each do |line|
      puts line.line_name
    end
    end
  end

  def run_again
    puts "Would you like to run another query (Y/N)?"
    @answer = gets.chomp
    if @answer == "#{'Y'}"
      run
    else
      puts "Fine. Bye."
    end
  end


  def run
    asks_for_borough
    gets_borough
    shows_stations_in_borough
    # lets_get_those_stations
    asks_for_station
    gets_station
    shows_lines
    run_again
  end
  end


  # def shows_lines_at_station
  #
  #
  # end

  # def asks_for_starting_station
  #   puts "What station?"
  # end
  #
  # def gets_stations
  #   @var = gets.chomp
  # end
  #
  # def returns_var
  #   @var
  # end
  #
  # def run
  #   #needs borough query
  #   asks_for_borough
  #   gets_borough
  #   asks_for_starting_station
  #   gets_stations
  # end

#  def finding_by_station_name
    #station_name = asks_for_starting_station

  #  station_ary = Station.all

#    station_ary.find do |station|
#      station.station_name == @var
#    end


  #end
