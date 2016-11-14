class Routemapper < ActiveRecord::Base
  belongs_to :route
  belongs_to :stop

  def self.longest_route
    # I think it would make more sense to find the largest number of stops first, the select route where stops == largest number of stops, just in case there are multiple routes with that number of stops rather than just grabbing the top one, it would be a bit more work for activerecord but should be doable. I think it would involve a subquery in SQL

    self.group(:route).order('count_id DESC').limit(1).count(:id).keys.first

    # lets split this up, Select ids with the largest number of stops as an array then find those ids in the stops table
    # Select route_id, count(id) as number_of_stops from Routemapper Group by route.id order by count(*)

  end

  # need a better name for this, same deal as above should change query but for now it works
  def self.stop_w_most_routes
    self.group(:stop).order('count_id DESC').limit(1).count(:id).keys.first
  end

  #  def self.max_stops
  #   self.group(:route).order('count_id DESC').limit(1).count(:id).values.first
  #  end
   #This hits the db for each route, not efficient
  #  def self.longest_route
  #    result = []
  #    max_stops = self.max_stops
  #    Route.all.each { |route| result.push(route) if route.num_of_stops == max_stops }
  #    result
  #  end
end
