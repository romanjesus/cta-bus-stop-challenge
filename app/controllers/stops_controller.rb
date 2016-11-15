class StopsController < ApplicationController

  def index
    @routes = Route.all
    @longest_route = Routemapper.longest_route
    @stop_w_most_routes = Routemapper.stop_w_most_routes
    @stops = Stop.all
  end

  def show
    @stop = Stop.find(params[:id])
    @stats = Stop.stop_stats(params[:id])
    render 'show'
  end


  def top_ten_by_boardings
    @stops_by_boardings = Stop.top_ten_by_boardings

    render 'top_ten_by_boardings'
  end

  def top_ten_by_alightings
    @stops_by_alightings = Stop.top_ten_by_alightings

    render 'top_ten_by_alightings'
  end

end
