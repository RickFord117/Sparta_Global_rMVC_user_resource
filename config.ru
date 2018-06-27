require 'sinatra'
require 'sinatra/contrib'
require_relative './controllers/user_controller.rb'

run UserController
