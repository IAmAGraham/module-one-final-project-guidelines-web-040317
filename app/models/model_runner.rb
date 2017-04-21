require "pry"

class ModelRunner

  def asks_for_borough
    puts "**********************************************".blue
    puts "***********************************************".blue
    puts "************************************************".blue
    puts "*************************************************".blue
    puts "**************************************************".blue
    puts "***************************************************".blue
    puts "****************************************************".blue
    puts "*****************************************************".blue
    puts "******************************************************".blue
    puts "*******************************************************".blue
    puts "*********************************************************".blue
    puts ""
    puts "Hello! Welcome to a very, very LEAN MTA App."
    puts ""
    puts "*********************************************************".blue
    puts ""
    puts "What borough are traveling from? Brooklyn, Queens, Bronx or Manhattan?"
    puts ""
    puts "*********************************************************".blue
  end

  def gets_borough
    @borough = gets.chomp.capitalize
  end

  def shows_stations_in_borough
    found_borough = Borough.find_by(borough_name: @borough)
    puts ""
    puts "*********************************************************".green
    puts ""
    puts "Here are all the stations in #{found_borough.borough_name}:"
    puts "*********************************************************".green
    puts ""
    puts found_borough.borough_name
    found_borough.stations.each do |station|
      puts station.station_name
    end
  end

  def asks_for_station
    puts "*********************************************************".red
    puts "Select your station from the above options"
  end

  def gets_station
    @station = gets.chomp.casecamp
  end

  def shows_lines
    found_station = Station.find_by(station_name: @station)
    puts "Here are all the trains in #{found_station.station_name}"
    puts found_station.station_name
    found_station.lines.each do |line|
      puts line.line_name
    end
  end

  def run
    asks_for_borough
    gets_borough
    shows_stations_in_borough
    asks_for_station
    gets_station
    shows_lines
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
