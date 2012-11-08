class City < ActiveRecord::Base
  attr_accessible :name, :country_id
  belongs_to :country
  has_one :continent, :through => :country
end
