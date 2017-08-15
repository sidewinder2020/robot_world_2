require_relative '../models/robot.rb'
require 'pry'

class RobotWorldApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :method_override, true
  

end
