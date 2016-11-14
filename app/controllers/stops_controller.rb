class StopsController < ApplicationController

  def index
    stops_by_boardings = Stop.top_ten_by_boardings;

    @stops_by_boardings = {}
    stops_by_boardings.each do |stop|
      @stops_by_boardings[stop.clean_name] = stop.boardings
    end

    @stops_by_boardings

    stops_by_alightings = Stop.top_ten_by_alightings

    @stops_by_alightings = {}
    stops_by_alightings.each do |stop|
      @stops_by_alightings[stop.clean_name] = stop.alightings
    end

    @stops_by_alightings

    @longest_route = Routemapper.longest_route

    @stop_w_most_routes = Routemapper.stop_w_most_routes

  end

end
