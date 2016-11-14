class Stop < ActiveRecord::Base
  has_many :routemapper
  has_many :routes, { through: :routemapper, source: :route }

  def num_of_routes
    self.routes.count
  end

  def clean_name
    "#{self.id }: #{self.on_street}"
  end

  def self.top_ten_by_boardings
    self.order("boardings DESC").limit(10)
  end

  def self.top_ten_by_alightings
    self.order("alightings DESC").limit(10)
  end
end
