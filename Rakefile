ENV["SINATRA"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :default => spec
task :console do
  Pry.start
end
