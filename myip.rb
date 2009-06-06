# set environment variables
ENV['RACK_ENV'] ||= 'production'
ENV['APP_ROOT'] ||= File.expand_path(File.join(File.dirname(__FILE__)))
ENV['APP_ROOT_URI'] = '/'

$:.unshift(ENV['APP_ROOT'])       # set load paths

require 'rubygems'                # require
require 'sinatra'                 # libs

get '/' do
  'Hello world!'
end


