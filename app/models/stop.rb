class Stop < ActiveRecord::Base
  has_many :routemapper
  has_many :routes, { through: :routemapper, source: :route }

  def num_of_routes
    self.routes.count
  end

  def clean_name
    "#{self.id }: #{self.on_street}"
  end

  def full_name
    "#{self.id }: #{self.on_street} & #{self.cross_street}"
  end

  def self.top_ten_by_boardings
    stops_by_boardings = {}

    self.order("boardings DESC").limit(10).each do |stop|
      stops_by_boardings[stop.clean_name] = stop.boardings
    end

    stops_by_boardings
  end

  def self.top_ten_by_alightings
    stops_by_alightings = {}

    self.order("alightings DESC").limit(10).each do |stop|
      stops_by_alightings[stop.clean_name] = stop.alightings
    end

    stops_by_alightings
  end

  def self.stop_stats(id)
    stop = Stop.find(id)

    stats = {}

    stats["Boardings"] = stop.boardings
    stats["Alightings"] = stop.alightings

    stats

  end
end
