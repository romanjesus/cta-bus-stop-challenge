class Stop < ActiveRecord::Base
  has_many :routemapper
  has_many :routes, { through: :routemapper, source: :route }
end
