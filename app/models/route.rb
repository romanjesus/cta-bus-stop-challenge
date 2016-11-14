class Route < ActiveRecord::Base
  has_many :routemapper
  has_many :stops, { through: :routemapper, source: :stop }

  def num_of_stops
    self.stops.count
  end

end
