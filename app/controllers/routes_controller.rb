class RoutesController < ApplicationController

  def show
    @longest_route = Routemapper.longest_route
    @stop_w_most_routes = Routemapper.stop_w_most_routes
    @routes = Route.all
    @route = Route.find(params[:id])

    render 'show'
  end

end
