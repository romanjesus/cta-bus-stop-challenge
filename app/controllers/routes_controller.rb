class RoutesController < ApplicationController

  def show
    @route = Route.find(params[:id])
      
    render 'show'
  end

end
