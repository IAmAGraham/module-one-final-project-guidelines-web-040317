require 'bundler'
Bundler.require
require "sinatra/activerecord"
require 'rake'
require 'pry'
require 'csv'
require 'sqlite3'
require 'require_all'
require 'colorize'

# require_relative '../app/models/station.rb'
# require_relative '../app/models/train.rb'
# require_relative '../db/seed.rb'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.sqlite')
require_all 'app'

ActiveRecord::Base.logger.level = 1
#
# DB = {:conn => SQLite3::CSV.new("db/train_info.csv")}


#
# DB[:conn].execute("CREATE TABLE IF NOT EXISTS train_info
#           (id INTEGER PRIMARY KEY,
#           station_id INTEGER,
#           complex_id INTEGER,
#           GTFS_stop_id TEXT,
#           division TEXT,
#           lines TEXT,
#           stop_lines TEXT,
#           borough TEXT,
#           daytime_routes TEXT,
#           structure TEXT,
#           GTFS_latitude NUMERIC,
#           GTFS_longitude NUMERIC);")

# Train.make_db(@db)


# connection_details = CSV::load(File.open('train_info.csv'))

# CSV.parse(train_info, headers:true ) do |row|
#    db.execute ("import #{row} into #{train_info}")
#  end
#
# ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/train_info.csv')
# require_all 'lib'







# CSV.parse(csv, headers: true) do |row|
#   db.execute "insert into users values ( ?, ? )", row.fields # equivalent to: [row['name'], row['age']]
# end
#
# db.execute( "select * from users" ) # => [["ben", 12], ["sally", 39]
