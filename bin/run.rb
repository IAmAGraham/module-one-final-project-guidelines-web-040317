require_relative '../config/environment'

require_relative "../app/models/model_runner"


  model = ModelRunner.new
  model.asks_for_starting_station
  station = model.gets_stations
  Station.find_by(station_name: station)

  #station_name = model.asks_for_starting_station
