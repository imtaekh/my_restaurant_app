require "rubygems"
require "bundler"
Bundler.require

#models
require "./models/menu.rb"
require "./models/order.rb"

#controller
require "./app.rb"

run MyRestaurantApp
