class DealMember < ActiveRecord::Base
  attr_accessible :names
  belongs_to :users
  belongs_to :deals
end
