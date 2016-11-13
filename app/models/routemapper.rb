class Routemapper < ActiveRecord::Base
  belongs_to :route
  belongs_to :stop
end
