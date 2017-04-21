require "pry"

class ModelRunner

  def asks_for_borough
  puts "*********************************************************".blue
  puts "*********************************************************".blue
  puts "*********************************************************".blue
  puts "*********************************************************".blue
  puts "*********************************************************".blue
  puts "Hello! Welcome to a very, very LEAN MTA App!".white
  puts "*********************************************************".blue
  puts "*********************************************************".blue
  puts "*********************************************************".blue
  puts "*********************************************************".blue
  puts "*********************************************************".blue
  puts ""
  puts ""
  puts ""
  puts "*********************************************************".blue
end

    def gets_borough
    puts ""
    puts "What borough are traveling from? Brooklyn, Queens, Bronx or Manhattan?"
    puts ""
    puts "*********************************************************".blue

    @borough = gets.chomp.capitalize
  end

  def iterate_boroughs
    found_borough = Borough.find_by(borough_name: @borough)
  end


  def shows_stations_in_borough
    #if gets.chomp borough search = borough in db
    if iterate_boroughs
    # found_borough = Borough.find_by(borough_name: @borough)
    #  found_borough == @borough
      # puts ""
      # puts "*********************************************************".green
      # puts ""

      # puts ""
      # puts ""
      #then put the found_borough but just the name of the borough
      # puts found_borough.borough_name
      # found_borough.stations.each do |station|
      #   puts station.station_name

    else
      iterate_boroughs != @borough
        puts "Please try searching again"
        gets_borough
        # shows_stations_in_borough
      end
      # found_borough == @borough

  end

  def gives_station_name(station)
    found_borough.stations.each do |station|
      puts station.station_name
    end
  end


  def asks_for_station
    gives_station_options
    # puts "Here are all the stations in #{itereate_boroughs.borough_name}:"
    puts "*********************************************************".red
    puts "Select your station from the above options"
  end

  def gets_station
    @station = gets.chomp
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
    # itereate_boroughs
    shows_stations_in_borough
    gives_station_name
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
