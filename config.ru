require 'rubygems'
require 'bundler'
Bundler.require

require './models/menu_item.rb'
require './models/order.rb'

#controller
require './app.rb'

use Rack::MethodOverride
run MyRestaurantApp
