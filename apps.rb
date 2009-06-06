# set environment variables
ENV['RACK_ENV'] ||= 'production'
ENV['APP_ROOT'] ||= File.expand_path(File.join(File.dirname(__FILE__)))

$:.unshift(ENV['APP_ROOT'])       # set load paths

require 'rubygems'                # require
require 'sinatra'                 # libs

get '/ip/?' do
  raw = @request.env["REMOTE_ADDR"]
  raw.match(/^(\d+\.\d+\.\d+\.\d+),?/)
  $1
end

get '/' do
end