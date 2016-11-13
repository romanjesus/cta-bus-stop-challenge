class Route < ActiveRecord::Base
  has_many :routemapper
  has_many :stops, { through: :routemapper, source: :stop }
end
