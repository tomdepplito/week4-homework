require 'open-uri'

class WeatherController < ApplicationController

   def search
   end

    def conditions
      @city = params[:city]
      @url = URI.escape("http://api.openweathermap.org/data")
      @json_data = open(@url).read
      render :text => "Hello There!"
    end

end
