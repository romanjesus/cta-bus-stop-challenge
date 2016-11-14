class StopsController < ApplicationController

  def index
    @stops_by_boardings = Stop.top_ten_by_boardings

    @stops_by_alightings = Stop.top_ten_by_alightings

    @longest_route = Routemapper.longest_route

    @stop_w_most_routes = Routemapper.stop_w_most_routes

    @stats = Stop.stop_stats(14011)

  end

  def show
    @stop = Stop.find(params[:id])
    @stats = Stop.stop_stats(params[:id])
    render 'show'
  end

end
