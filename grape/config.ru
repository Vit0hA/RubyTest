require_relative 'date'
Rack::Handler.default.run(CheckTime, :Port => 8080)
